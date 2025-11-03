library(tidyverse)
library(readxl)

setwd("~/M2/Scoring/Projet")

variables <- readRDS("compustat_company_variables.rds")
funda_db <- readRDS("compustat_funda_variables.rds")
data <- readRDS("compustat_all_light.rds")
compustat_all <- readRDS("compustat_all.rds")
lopucki <- read_excel("Florida-UCLA-LoPucki Bankruptcy Research Database 1-12-2023.xlsx")

na_vector <- colSums(is.na(data))
variables$nz <- na_vector

companies_master_data <- data %>%
  filter(grepl('APPLE INC|ENRON CORP', conm)) %>%
  collect()
plot(companies_master_data$fyear, companies_master_data$acox)

data_2 <- compustat_all %>%
  filter(grepl('APPLE INC|ENRON CORP', conm)) %>%
  select(gvkey, fyear, conm, at, wcap, re, ebit, lt, sale) %>%
  mutate(WCTA = wcap / at,
         RETA = re / at,
         EBTA = ebit / at,
         TLTA = lt / at, # as a proxy for ME/TL
         SLTA = sale / at)
ggplot(data_2, aes(fyear,WCTA))+
  geom_point(color = conm)

### Lopucki ###
lopucki_clean <- lopucki %>%
  select(NameCorp, Chapter, GvkeyBefore, DateFiled) %>%
  filter(Chapter %in% c('7', '11')) %>%
  group_by(GvkeyBefore) %>%
  summarize(DateFiled = min(DateFiled),
            
            NameCorp = NameCorp[which.min(DateFiled)],
            Chapter = Chapter[which.min(DateFiled)]) %>%
  mutate(DateFiled = lubridate::as_date(DateFiled)) %>%
  ungroup()

### Jointure Lopucki et Compustat
df_joined <- left_join(compustat_all, lopucki_clean, by = c("gvkey" = "GvkeyBefore"))
table(is.na(df_joined$DateFiled))


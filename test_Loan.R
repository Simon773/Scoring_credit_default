library(tidyverse)

setwd("~/M2/Scoring/Projet")

variables <- readRDS("compustat_company_variables.rds")
funda_db <- readRDS("compustat_funda_variables.rds")
data <- readRDS("compustat_all_light.rds")
compustat_all <- readRDS("compustat_all.rds")

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

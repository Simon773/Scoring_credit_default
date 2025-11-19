---

### Articles lus
- Altman, 1968  
- Altman, 1974
- Ayash et al., 2023 (sur le drive: articulate, 2016)
- Shumway, 2001

### En cours de lecture
- Campbell, 2008 $\rightarrow$ Loan
- Chava, 2004 $\rightarrow$ Nathan
- Bardos, 2007 $\rightarrow$ Simon
- Moodys, 2000 $\rightarrow$ Maëlys

### Reste à lire
- Bondscore, 2004

---

## Altman, 1968
Synthèse rapide : construction du ratio Altman (quelles variables, pq / interaction ensemble)
Financial ratios, discriminant analysis and the prediction of corporate bankruptcy

Obj : attempt an assessment of the quality of ratio analysis as an analytical technique

Historically, find the ratio that explains the defaultness but every study has its preferred ratio.

Altman: combination of ratios, which ratios ? which weights ? 

Statistical method : Multiple discriminant analysis $\approx$ LDA with multiple groups

Stratification of the firms by industry and size

Withdraw the small companies and the very large

Z = .012X1 + .014X2 + .033X3 + .006X4 + .999X5
where X1 = Working capital/Total assets $\rightarrow$ measure of the net liquid assets of the firm relative to the total capitalization (often in studies, eg : Merwin)

Working capital = current asset - current liabilities

X2 = Retained Earnings/Total assets $\rightarrow$ cumulative profitability over time ; young company will have a small re/ta ratio (no time to have cumulated a lot of profits)

X3 = Earnings before interest and taxes/Total assets $\rightarrow$ measure of the true productivity of the company / profitability of a firm

X4 = Market value equity/Book value of total debt $\rightarrow$ how much the firm's assets can decline in value before the the company becomes insolvent + add a market value that other studies don't have (more efficient than Net worth / Total debt)

X5 = Sales/Total assets $\rightarrow$ measure of management's capability in dealing with competitive conditions ; not significant alone but it is with the other ratios

Z = Overall Index ; greater firm's bankruptcy potential = lower discriminant score (Z)

Contribution of the variable (in order) : X3, X5, X4, X2, X1
Importance of the fifth ratio, 2nd in the importance + negative information (Cochran, more important to have a negative correlation than one more positive one)

MDA model : extremely correct in the initial model : 33 firms of each group (bankrupcy and no bankruptcy), data one financial statement prior to bankruptcy (?) (95% correctly specified) 

2nd model : 2 years before bankruptcy, 72% of accuracy 

Test ok up to 5 years before bankruptcy


Limits: sample bias and search bias

Model with a new set (21 bankrupt companies) : better accuracy than the first model (96%) $\rightarrow$ upward bias not in the test set

New dataset, close to the first group of companies (negative profit 2/3 years before the bankrupt), good result ; for misclassification, can be explained by values of Z in a "gray area" (all misclassified companies are have Z score between 1.81 and 2.67)


If 2 to 5 years, less reliable prediction of bankruptcy


Application: find the value of Z that represents a cut-off point

Z > 2.99, non-bankruptcy (very certain)

Z < 1.81, all bankrupt

In between, zone of ignorance (pb of misclassification)

Threshold value: 2.675 (chosen by looking at the misclassified companies, $\approx$ median)


- MDA model can not be used for credit evaluation as it does not take important variables for this sector (purpose of the loan, its maturity, security involved, deposity status...)

- internal control considerations: the criteria can be used to anticipate difficulties

## Altman, 1974
Obj: model to determine the credit worthiness of commercial loan applicants

Data: industrial sector (cotton and wool textile sector), France

35 problem firms, 99 good firms, 1968-1971 period ; 41 financial ratios

#### 1 - Univariate analysis
Mean, variance, distribution of each ratio to identify the most relevant one and potential correlations

Activity ratios: more data = stronger company

#### - PCA
ACP to reduce number of ratios

F2 = relative importance of investment in the firms

F1 = relative importance of margins (or cash flows but independently of F2)

#### - Discriminant analysis
Create a variable which is the linear combinaison of all ratios

Allows to create a score for each company

Model with 41 ratios : good for one year predictions

Interpretation: higher correlations between initial ratios and new variable (ratios 34 (0.59), 33 (0.56), 12 (0.49), 30, 31, and 32 (0.42), 8 (-.40), and 3, 4, 9, 13, 35, 36, and 39 (all between 0.34 and 0.37). In addition, ratio 24 displayed a rather high negative correlation here.)

Reduced model: add a third dimension to PCA to find the "important" ratios

Ten-ratio model: most efficient indicators in the first model and in the second method (8, 9, 10, 12, 15, 17, 20, 23, 24, 33)

Discriminative strength = 0.62

#### - Interpretation and Conclusion
Bad firms tend to have higher leverage, lower profitability, and lower contributions to the firms' value-added productivity.

Most financial ratios can discriminate, using their mean values

Better model with more ratios but more handable with less

Page 17 of this article: name of all ratios

## Ayash et al., 2023
Synthèse rapide : comprendre si Compustat respecte les relations entre les différentes balances en finance (la réponse est non mais représente bien les balances)
Do Compustat Financial Statement Data Actually Articulate ?

Obj: complete the Casey's article (2016) and show that more efficient
when add two data characteristics (level of the data and understanding
on the variables (line or calculable))

Compustat: data done to use FSBM (Financial Statement Balancing Model)

-   Majority of the nulls on line item accounts (not calculable amounts)

-   If null at the line item account = 0 at the top-level (eg: inventory
    null $\rightarrow$ technology firms)

-   Once nulls in top-level line item accounts are resolved, users can
    solve for the few missing calculable amounts and get to an internal
    correct dataset

-   Common filters: non-financial firms, US firms, firms with sales or
    assets \> \$1 million USD and publicly traded

### Literature Review

Articulation's definition (Huefner, 1989) : each balance sheet account
change must be accounted for when explaining the aggregate change in
cash

Compustat taken for its integrity but not clear how to manage 0
$\rightarrow$ need a good understanding of the data

### Articulation model

Understanding of the model of Compustat by the authors (explique comment
sont calculées les valeurs + toutes les valeurs intermédiaire ; regarder
les tableaux en annexes pour avoir tous les détails)

-   Top-level income statement : EBITDA, EBIT, nopi, spi xint, txt

-   Sub-level income statement ; la qualité des sous-données varie en
    fonction du Panel (A ou b) : xi + do = xido (almost always) ; seq =
    ceq + pstk (idem) but rare examples were sub levels are well
    populated

-   Top-level balance sheet : assets (at, atc), liabilities (lct, lt),
    shareholders' equity (seq)

-   Sub-level balance sheet : idem but with more details

-   Top-level cash flow statement : where the income statement ends, the
    cash flow statement begins, and where the cash flow statement ends,
    the balance sheet begins

Test the articulation in Compustat data : income statement linked to the
cash flow statement and change in cash calculated using the 2 most
recent balance sheets (BS) = change in cash on the cash flow statement

1° others filters : drop the first year of each firm (bc need two BS
periods)

2° correct missing values

3° test the articulation between each "group" of variables : highly
accurate in presenting balance sheets (B/S) that balance, income
statements (I/S) that tie from revenue to net income, and accurate
statements of cash flows (CF/S) but less adept at generating between
statement articulation

Why ?

-   linkage can change over time

-   missing values (16.3% of firm-year observations)


## Shumway 2001

Abstract: Traditional bankruptcy models are biased because they ignore time and selection issues. He proposes a discrete-time hazard model that uses firm-year data and time-varying covariates to generate consistent estimates. Empirically, he shows that adding market-based variables substantially improves bankruptcy prediction.

A hazard model predicts the probability that a firm fails at time t conditional on surviving until t.

Data: 
Firms from 1962–1992 with data available in Compustat and CRSP.
Variables: Altman (1968) ratios (WC/TA, RE/TA, EBIT/TA, ME/TL, S/TA) and Zmijewski (1984) ratios (NI/TA, TL/TA, CA/CL) + relative size, pPast stock returns, volatility of monthly returns

Results:
Once bias is removed using the hazard model, only EBIT/TA and ME/TL is significant among Altman variables and NI/TA is significant among Zmijewski variables.
Market-based variables are powerful predictors: low market size → higher risk, poor past returns → higher risk, high volatility → higher risk
Combining market variables + two accounting ratios (NI/TA and TL/TA) is the most accurate model

## Moodys, 2000
Il faut séparer entreprises privées et publiques => modèle fait pour les privées. Pour les publiques le + famous c'est Merton 
Son modèle (RiskCalc) marche aussi pour des entreprises non financières 

Besoin de 10 financial ratios / indicators computed from 17 basic financial inputs 
Assets/CPI
Inventories / COGS
Liabilities / Assets
Net Income Growth =>  (current Net Income/ Assets)-(prior Net Income/Assets)
Net Income / Assets
Quick Ratio =>  (Current Assets - Inventory)/Current Liabilities
Retained Earnings / Assets
Sales Growth =>  (current Sales/prior Sales)-1
Cash / Assets
Debt Service Coverage Ratio =>  EBIT/interest

### A quel horizon regarder le défaut ? 
"The real problem with the 1-year rate is that very few loans go bad within 12 months of origination, and of those that do, fraud is often a factor, in which case a model based on financials wouldn't work well anyway"

Pas 1 an, Moodys fait 1 et 5, donc nous peut être regarder 3 et 5 ans. 

### Quelle métrique utiliser ? 
Il utilise CAP (Cumulative accuracy profile). C'est mieux qu'une ROC curve dans le cas où il y a peu de défauts, ce qui est notre cas. 

La CAP représente, après avoir classé les emprunteurs du plus risqué au moins risqué (score prédit du plus haut au plus petit), le pourcentage cumulatif de défauts capturés en fonction du pourcentage cumulatif d’emprunteurs examinés (si on a pris les x premiers % d'entreprises rangées, quel % de défauts on a prédit).

Exemple de code pour tracer ça
df <- df %>%
  arrange(desc(score)) %>%   # score = prob de défaut
  mutate(
    cum_borrowers = row_number() / n(),
    cum_defaults  = cumsum(default) / sum(default)
  )

ggplot(df, aes(x = cum_borrowers, y = cum_defaults)) +
  geom_line(size = 1) +
  geom_abline(slope = 1, intercept = 0, linetype = "dashed") +  # modèle aléatoire
  labs(title = "CAP Curve",
       x = "Cumulative Borrowers",
       y = "Cumulative Defaults Captured")

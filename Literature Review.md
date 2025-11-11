---

### Articles lus
- Altman, 1968  
- Altman, 1974  

### En cours de lecture
- Ayash et al., 2023 (sur le drive: articulate, 2016) $\rightarrow$ Loan
- Shumway, 2001 $\rightarrow$ Nathan

### Reste à lire
- Campbell, 2008
- Chava, 2004
- Bardos, 2007
- Bondscore, 2004
- Moodys, 2000

---

## Altman, 1968
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

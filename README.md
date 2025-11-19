# Scoring_credit_default
Project of scoring with Loan, Maëlys and Nathan and Simon

Objectives for Wednesday 26th, 8h am (n'est-ce pas Simon ?):
* add Moody's to the default data $\rightarrow$ Maëlys
* lire Bardos et dire s'il y a des trucs intéressants à tester $\rightarrow$ Simon
* Variables à tester:
  * Altman $\rightarrow$ commencé, Loan
  * Zmijewski $\rightarrow$ commencé, Loan
  * Industry/sector (Campbell)
* choix de l'horizon
* quels modèles ? Régression logistique, XGBoost ?
* méthodes d'oversampling ?
* théorie modèle de survie : pourquoi, comment, quelles variables $\rightarrow$ Nathan
* assessment of the models: ROC Curve? ROC Curve vs accuracy? Moodys?
  * Attention dans les CV au time split (dans le test on doit avoir que le futur)
  * Attention au seuil auquel on regarde les metrics
* diapo $\rightarrow$ Loan et Nathan
 * Analyse des NA en fonction des années $\rightarrow$ prendre les années plus récentes
* Ajout du mois ? 

Objectives for December: 
* fine-tuning of the model $\rightarrow$ Simon
* modèle de survie

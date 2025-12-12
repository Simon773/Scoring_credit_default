# Scoring_credit_default
Project of scoring with Loan, Maëlys and Nathan and Simon

### Ordre des codes:  
1) Création de la BDD : branche dev_Maelys, bdd_jointures_v4
   Ce code joint les différentes BDD données par le prof.
2) Data Cleaning + EDA : branche dev_Loan, Data Cleaning.Rmd
   Winsorisation des ratios d'altman et des variables de Shumway + suppression de certaines industries + graphiques pour chaque variable winsorisée
3) Modèle (régression logistique)
   Régression logistique (plusieurs étapes : altman, winsorisé, ajout industrie puis Shumway et lasso)
   ROC et CAP Curve
   Rq : Shumway ne fonctionne pas car les variables ne sont pas dans le dataset sorti du premier code (et dispo sur le drive), il faudrait relancer le code de Maëlys pour les récupérer...

### Objectives for Wednesday 26th, 8h am (n'est-ce pas Simon ?):
* add Moody's to the default data $\rightarrow$ fait
* lire Bardos et dire s'il y a des trucs intéressants à tester $\rightarrow$ fait
* Variables à tester:
  * Altman $\rightarrow$ fait 
  * Zmijewski $\rightarrow$ commencé, Loan $\rightarrow$ abandon
  * Industry/sector (Campbell) $\rightarrow$ fait pour industry
* choix de l'horizon $\rightarrow$ juste dafult_1Y, default_3Y ? ou pour l'évaluation du modèle (si c'est ça, c'est à faire)
* quels modèles ? Régression logistique, XGBoost ? $\rightarrow$ pour le moment juste Régression logistique
* méthodes d'oversampling ? $\rightarrow$ pour le moment juste point dans régression logistique
* théorie modèle de survie : pourquoi, comment, quelles variables $\rightarrow$ Nathan $\rightarrow$ abandon ?
* assessment of the models: ROC Curve? ROC Curve vs accuracy? Moodys? $\rightarrow$ Maëlys (finir Moodys) et Simon (dvp metrics pour année)
  * Attention dans les CV au time split (dans le test on doit avoir que le futur) $\rigtharrow$ **à corriger**
  * Attention au seuil auquel on regarde les metrics $\rightarrow$ **à faire**
* diapo $\rightarrow$ fait
* Analyse des NA en fonction des années $\rightarrow$ prendre les années plus récentes $\rightarrow$ **?**
* Ajout du mois ? $\rightarrow$ **?**

~~Objectives for December: 
* fine-tuning of the model $\rightarrow$ Simon
* modèle de survie~~

### A faire pour le rapport
* revoir le train/test split
* revoir métrique
* inclure Zmijewski ?
* rédiger

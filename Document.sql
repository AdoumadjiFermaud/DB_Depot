BRIEF



Le Brief va se diviser en trois parties : La première concerne l’analyse et la modélisation d’un
entrepôt de données relatif au visites médicales . La deuxième concerne l’implémentation de cet
entrepôt sur Management Studio de SQL Server 2019.La troisième concerne la consultation du
schéma de l’entrepôt avec Management Studio.
***Problème à résoudre***
Le tour opérateur OASIS possède des systèmes d’information pour la gestion de ses activités
touristiques. Pour améliorer ses revenus et optimiser ses promotions, la société a décidé
d’implémenter un entrepôt de données pour analyser ses activités. L’analyse concerne les montants
déboursés par les clients pendant chaque voyage et le nombre de jours passés par ce dernier lors du
séjour . L’analyse se fera selon la date , les différentes destinations (hôtel, ville, pays), les
compagnies aériennes (nom et pays) et bien sur selon les clients (nom, age, nbr enfants, ville, pays ,
revenu)
1-Proposer un modèle en étoile de cet entrepôt en précisant la table des faits, et les tables
dimensions .
2-Implémenter cet entrepôt avec l’outil Managements Studio en respectant les contraintes
d’intégrité.
3-Visualiser l’entrepôt avec Management studio .1-Proposons un modèle en étoile de cet entrepôt en précisant la table des faits, et les tables
dimensions .
Table des faits: voyage
tables de dimensions: destination,date,compagnie,client.


2-Implémenter cet entrepôt avec l’outil Managements Studio en respectant les contraintes
d’intégrité.
Listons quelques tables de dimensions.

Create database DataW

CREATE TABLE [dbo].[client](
[code_client] [int] NOT NULL,
[nom] [varchar](100) NULL,
[age] [int] NULL,
[nbre_enfant] [int] NULL,
[ville] [varchar](100) NULL,
[pays] [varchar](100) NULL,
[revenue] [float] NULL) ;



CREATE TABLE [dbo].[compagnie](
[code_compagnie] [int] NOT NULL,
[nom] [varchar](100) NULL,
[pays] [varchar](100) NULL) ;


CREATE TABLE [dbo].[datev](
[code_date] [int] NOT NULL,
[jour] [varchar](100) NULL,
[mois] [varchar](100) NULL,
[annee] [int] NOT NULL) ;
3-Visualiser l’entrepôt avec Management studio .

BEGIN TRANSACTION 

DECLARE @MyCounter DATE;
SET @MyCounter = (
SELECT DISTINCT date_paiement FROM ProjetPOO.dbo.Commande
WHERE (YEAR(date_paiement) = @year AND MONTH(date_paiement) = @month)) 

SELECT @MyCounter AS [Date], SUM(Chiffre_affaire) AS [Chiffre d'affaire du mois] FROM (
SELECT @MyCounter  AS [test],  SUM(prix_HT *conc.quantite_produit) AS [Chiffre_affaire] FROM ProjetPOO.dbo.Produit
INNER JOIN 
(SELECT * FROM ProjetPOO.dbo.concerner)AS [conc]
ON ProjetPOO.dbo.Produit.ID = conc.ID_Produit
INNER JOIN 
(SELECT ID AS [ID_Commande], date_paiement FROM ProjetPOO.dbo.Commande)AS [com]
ON conc.ID_Commande = com.ID_Commande
GROUP BY conc.ID_Produit) AS [test]


COMMIT
BEGIN TRANSACTION 


SELECT ID , cli.nom, cli.prenom, ((prix_HT + (taux_TVA_produit/100))*conc.quantite_produit) AS [Total] FROM ProjetPOO.dbo.Produit
INNER JOIN 
(SELECT * FROM ProjetPOO.dbo.concerner)AS [conc]
ON ProjetPOO.dbo.Produit.ID = conc.ID_Produit
INNER JOIN
(SELECT ID AS [ID_Commande],ID_Client FROM ProjetPOO.dbo.Commande)AS[com]
ON conc.ID_Commande = com.ID_Commande
INNER JOIN (SELECT ID as [id_cli], nom, prenom FROM ProjetPOO.dbo.Client)AS[cli]
ON com.ID_Client = cli.id_cli

COMMIT
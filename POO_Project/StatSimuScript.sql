BEGIN TRANSACTION;

SELECT  SUM((prix_HT +  prix_HT*@simutva/100 - prix_HT*@remise/100 + prix_HT*@marge/100 - prix_HT*@demarque/100)*(quantite_stock)) AS [Valeur commerciale du stock]
FROM ProjetPOO.dbo.Produit;

COMMIT;
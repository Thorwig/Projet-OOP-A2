BEGIN TRANSACTION
SELECT TOP 10 designation, qte FROM 

(SELECT ID_Produit, SUM(quantite_produit) AS [qte] FROM ProjetPOO.dbo.concerner
GROUP BY ID_Produit)AS test
INNER JOIN 
(SELECT ID, designation FROM ProjetPOO.dbo.Produit) AS pdt
ON test.ID_Produit = pdt.ID

ORDER BY qte desc

COMMIT
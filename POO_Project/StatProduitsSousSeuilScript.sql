BEGIN TRANSACTION

SELECT * FROM ProjetPOO.dbo.Produit
WHERE quantite_stock < seuil_reaprovisionement_produit

COMMIT
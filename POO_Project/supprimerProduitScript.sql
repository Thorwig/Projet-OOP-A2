
BEGIN TRANSACTION

DELETE FROM ProjetPOO.dbo.Produit
WHERE ID = @ID;

COMMIT
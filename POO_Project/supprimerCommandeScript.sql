BEGIN TRANSACTION

DELETE FROM ProjetPOO.dbo.concerner
WHERE ID_Commande = @ID;

DELETE FROM ProjetPOO.dbo.Commande
WHERE ID = @ID;

COMMIT
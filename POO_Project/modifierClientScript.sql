BEGIN TRANSACTION;

UPDATE ProjetPOO.dbo.Client 
SET nom = @nom, prenom = @prenom, date_naissance = @date_naissance, nombre_commandes = @nombre_commandes
WHERE ID = @ID_client;

UPDATE ProjetPOO.dbo.Adresse
SET adresse = @adrfact, ville = @villefact, cp = @cpfact
WHERE ID = @ID_fact;

UPDATE ProjetPOO.dbo.Adresse
SET adresse = @adrliv, ville = @villeliv, cp = @cpliv
WHERE ID = @ID_liv;

COMMIT;
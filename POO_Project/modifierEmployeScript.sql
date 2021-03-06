BEGIN TRANSACTION;

UPDATE ProjetPOO.dbo.Employe 
SET nom = @nom, prenom = @prenom, date_embauche = @date_embauche, poste = @poste
WHERE ID = @ID;

UPDATE ProjetPOO.dbo.Adresse
SET adresse = @adresse, ville = @ville, cp = @cp
WHERE ID = (SELECT ID_Adresse FROM ProjetPOO.dbo.Employe WHERE ID = @ID);

COMMIT;

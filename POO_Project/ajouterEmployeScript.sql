
BEGIN TRANSACTION;

INSERT INTO ProjetPOO.dbo.Adresse (adresse, ville, cp)
VALUES (@adresse, @ville, @cp);

INSERT INTO ProjetPOO.dbo.Employe (nom, prenom, date_embauche, poste, ID_Adresse) 
VALUES (@nom, @prenom, @date_embauche, @poste, (SELECT MAX(ID) FROM ProjetPOO.dbo.Adresse));

INSERT INTO ProjetPOO.dbo.specifier (ID_Type, ID_Adresse)
VALUES (3, (SELECT MAX(ID) FROM ProjetPOO.dbo.Adresse));

COMMIT;

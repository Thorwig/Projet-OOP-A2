
BEGIN TRANSACTION;

INSERT INTO ProjetPOO.dbo.Client (nom, prenom, date_naissance, nombre_commandes)
VALUES (@nom, @prenom, @date_naissance, @nombre_commandes);

INSERT INTO ProjetPOO.dbo.Adresse (adresse, ville, cp) 
VALUES (@adrfact, @villefact, @cpfact);

INSERT INTO ProjetPOO.dbo.situer (ID_Client, ID_Adresse)
VALUES ((SELECT MAX(ID) FROM ProjetPOO.dbo.Client), (SELECT MAX(ID) FROM ProjetPOO.dbo.Adresse));

INSERT INTO ProjetPOO.dbo.specifier (ID_Type, ID_Adresse)
VALUES (1, (SELECT MAX(ID) FROM ProjetPOO.dbo.Adresse));

INSERT INTO ProjetPOO.dbo.Adresse (adresse, ville, cp) 
VALUES (@adrliv, @villeliv, @cpliv);

INSERT INTO ProjetPOO.dbo.situer (ID_Client, ID_Adresse)
VALUES ((SELECT MAX(ID) FROM ProjetPOO.dbo.Client), (SELECT MAX(ID) FROM ProjetPOO.dbo.Adresse));

INSERT INTO ProjetPOO.dbo.specifier (ID_Type, ID_Adresse)
VALUES (2, (SELECT MAX(ID) FROM ProjetPOO.dbo.Adresse));

COMMIT;
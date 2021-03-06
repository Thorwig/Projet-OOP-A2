BEGIN TRANSACTION;

SELECT emp.ID AS [ID_Employe], nom AS [Nom], prenom AS [Prénom], date_embauche AS [Premier Jour], Poste AS [Poste], emp.ID_Adresse, 
adremp.adresse AS [Adresse], adremp.ville, adremp.cp AS [Code postal]
FROM ProjetPOO.dbo.Employe AS emp

LEFT JOIN (
	SELECT * FROM ProjetPOO.dbo.Adresse AS adr1 
	INNER JOIN ProjetPOO.dbo.specifier as spec1 
	ON (adr1.ID = spec1.ID_Adresse)

	WHERE ID_Type = 3
) AS adremp
ON (emp.ID_Adresse = adremp.ID);

COMMIT;

BEGIN TRANSACTION;

UPDATE ProjetPOO.dbo.Commande
SET reference = @ref, paiement_valide = @valide, date_envois = @envoi, date_paiement = @paiement, 
moyen_paiement = @moyen, total_articles_achetes =  @total
WHERE ID = @ID;

UPDATE ProjetPOO.dbo.concerner 
SET ID_Produit = (SELECT ID FROM ProjetPOO.dbo.Produit WHERE designation = @produit), 
quantite_produit = @qte
WHERE ID_Commande = @ID;

COMMIT;
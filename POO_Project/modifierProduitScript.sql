BEGIN TRANSACTION;

UPDATE ProjetPOO.dbo.Produit 
SET designation = @desi, prix_HT = @pht, quantite_stock = @qte, seuil_reaprovisionement_produit = @seuil, taux_TVA_produit = @tva
WHERE ID = @ID;

COMMIT;
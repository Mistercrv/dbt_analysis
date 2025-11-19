
WITH commandes_details AS (
    SELECT
        orderdetailid AS commande_detail_id,
        orderid AS commande_id,
        productid AS produit_id,
		quantity as quatite
    FROM "STAGING".order_details
)

SELECT *
FROM commandes_details
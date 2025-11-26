
WITH commandes_details AS (
    SELECT
        orderdetailid AS commande_detail_id,
        orderid AS commande_id,
        productid AS produit_id,
		quantity as quatite
    FROM {{ ref('snp_commandes_details') }}
    where dbt_valid_to is null
)

SELECT *
FROM commandes_details
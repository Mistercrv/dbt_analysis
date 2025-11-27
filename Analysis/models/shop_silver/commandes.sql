WITH commandes AS (
    SELECT
        orderid AS commande_id,
        customerid AS client_id,
        orderdate as commande_date,
		'IMA-' || LPAD(employeeid::text, 3, '0') AS employe_id,
        'EXP-' || LPAD(shipperid::text, 3, '0') AS expediteur_id
    FROM {{ ref( 'snp_commandes' ) }}
    where dbt_valid_to is null
)

SELECT *
FROM commandes

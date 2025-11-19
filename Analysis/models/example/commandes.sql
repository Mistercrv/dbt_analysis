WITH commandes AS (
    SELECT
        orderid AS commande_id,
        customerid AS client_name,
        orderdate as commande_date,
		'IMA-' || LPAD(employeeid::text, 3, '0') AS employe_id,
        'EXP-' || LPAD(shipperid::text, 3, '0') AS expediteur_id
    FROM "STAGING".orders
)

SELECT *
FROM commandes

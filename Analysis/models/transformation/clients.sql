WITH clients AS (
    SELECT
        customerid AS client_name,
		customername as client_nom,
		address as client_address,
		city as client_ville,
		country as client_pays
    FROM {{ source('staging', 'customers') }}
)

SELECT *
FROM clients
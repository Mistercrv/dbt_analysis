WITH clients AS (
    SELECT
        customerid AS client_name,
		customername as client_nom,
		address as client_address,
		city as client_ville,
		country as client_pays
    FROM "STAGING".customers
)

SELECT *
FROM clients
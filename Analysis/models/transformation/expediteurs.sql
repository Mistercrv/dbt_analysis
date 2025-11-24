WITH expediteurs AS (
    SELECT 
        'EXP-' || LPAD(shipperid::text, 3, '0') AS expediteur_id,
        shippername as expediteur_name,
        phone as expediteur_phone
    FROM "STAGING".shippers
)
SELECT *
FROM expediteurs

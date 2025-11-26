WITH expediteurs AS (
    SELECT 
        'EXP-' || LPAD(shipperid::text, 3, '0') AS expediteur_id,
        shippername as expediteur_name,
        phone as expediteur_phone
    FROM  {{ ref( 'snp_expediteurs' ) }}
    where dbt_valid_to is null
)
SELECT *
FROM expediteurs

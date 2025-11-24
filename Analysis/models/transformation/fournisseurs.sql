WITH fournisseurs AS (
    SELECT 
        'FRS-' || LPAD(supplierid::text, 3, '0') AS fournisseur_id,
        suppliername as fournisseur_name,
        address as fournisseur_address,
        postalcode as fournisseur_codepostale,
        city as fournisseur_ville,
        country as fournisseur_pays
    FROM  {{ source('staging', 'suppliers') }}
)
SELECT *
FROM fournisseurs

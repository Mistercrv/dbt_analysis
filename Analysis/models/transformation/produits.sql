WITH produits AS (
    SELECT
        productid AS produit_id,
        productname AS produit_name,
        'FRS-' || LPAD(supplierid::text, 3, '0') AS fournisseur_id,
        categoryid AS categorie_id,
        unit AS unit_origin,
        price AS produit_prix
    FROM {{ source('stg', 'products') }}
)

SELECT *
FROM produits

{{
    config(
        schema = var("env_silver", "dev_silver")
    )
}}
WITH produits AS (
    SELECT
        productid AS produit_id,
        productname AS produit_name,
        'FRS-' || LPAD(supplierid::text, 3, '0') AS fournisseur_id,
        categoryid AS categorie_id,
        unit AS unit_origin,
        price AS produit_prix
    FROM {{ ref ( 'snp_produits' ) }}
    where dbt_valid_to is null
)

SELECT *
FROM produits
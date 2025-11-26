-- models/my_product_category_model.sql
with products_cte as (

    select
        produit_id,
        produit_name,
        categorie_id,
        fournisseur_id,
        unit_origin,
        produit_prix
    FROM {{ ref ( 'produits' ) }}

),

categories_cte as (

    select
        categorie_id,
        categorie_name,
        description
    from  {{ ref("categories_produits") }}

)

select
    p.produit_id,
    p.produit_name,
    p.unit_origin,
    p.produit_prix,
    c.categorie_name,
    c.description as category_description
from products_cte p
left join categories_cte c
    on p.categorie_id = c.categorie_id

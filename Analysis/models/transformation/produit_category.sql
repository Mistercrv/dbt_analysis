-- models/my_product_category_model.sql
with products_cte as (

    select
        productid,
        productname,
        categoryid,
        supplierid,
        unit,
        price
    from {{ source('stg', 'products') }}

),

categories_cte as (

    select
        categoryid,
        categoryname,
        description
    from {{ source('stg', 'categories') }}

)

select
    p.productid,
    p.productname,
    p.unit,
    p.price,
    c.categoryname,
    c.description as category_description
from products_cte p
left join categories_cte c
    on p.categoryid = c.categoryid

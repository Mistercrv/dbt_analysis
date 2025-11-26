{% snapshot snp_produits %}

    {{
        config(
          target_database='DBT_DEMO',
          target_schema='shop_bronze',
          strategy='check',
          check_cols='all',
          unique_key='productid'
        )
    }}

    select * FROM {{ source('stg', 'products') }}

{% endsnapshot %}
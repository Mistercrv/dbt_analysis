{% snapshot snp_commandes %}

    {{
        config(
          target_database='DBT_DEMO',
          target_schema='shop_bronze',
          strategy='check',
          check_cols='all',
          unique_key='orderid'
        )
    }}

    select * FROM {{ source('stg', 'orders') }}

{% endsnapshot %}
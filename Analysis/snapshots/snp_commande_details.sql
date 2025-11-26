{% snapshot snp_commandes_details %}

    {{
        config(
          target_database='DBT_DEMO',
          target_schema='shop_bronze',
          strategy='check',
          check_cols='all',
          unique_key='orderdetailid'
        )
    }}

    select * FROM {{ source('stg', 'order_details') }}

{% endsnapshot %}
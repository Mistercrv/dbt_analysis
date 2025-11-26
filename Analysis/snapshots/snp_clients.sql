
{% snapshot snp_clients %}

    {{
        config(
          target_database='DBT_DEMO',
          target_schema='shop_bronze',
          strategy='check',
          check_cols='all',
          unique_key='customerid'
        )
    }}

    select * FROM {{ source('stg', 'customers') }}

{% endsnapshot %}
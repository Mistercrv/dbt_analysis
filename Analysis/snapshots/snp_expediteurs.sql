{% snapshot snp_expediteurs %}

    {{
        config(
          target_database='DBT_DEMO',
          target_schema='shop_bronze',
          strategy='check',
          check_cols='all',
          unique_key='shipperid'
        )
    }}

    select *  FROM  {{ source('stg', 'shippers') }}

{% endsnapshot %}
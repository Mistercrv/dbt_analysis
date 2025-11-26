{% snapshot snp_fournisseurs %}

    {{
        config(
          target_database='DBT_DEMO',
          target_schema='shop_bronze',
          strategy='check',
          check_cols='all',
          unique_key='supplierid'
        )
    }}

    select *  FROM  {{ source('stg', 'suppliers') }}

{% endsnapshot %}
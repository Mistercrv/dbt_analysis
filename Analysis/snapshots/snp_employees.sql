{% snapshot snp_employees %}

    {{
        config(
          target_database='DBT_DEMO',
          target_schema='shop_bronze',
          strategy='check',
          check_cols='all',
          unique_key='employeeid'
        )
    }}

    select * FROM  {{ source('stg', 'employees') }}

{% endsnapshot %}
{% snapshot snp_categorie_produit %}

    {{
        config(
          target_database='DBT_DEMO',
          target_schema='shop_bronze',
          strategy='check',
          check_cols='all',
          unique_key='categoryid'
        )
    }}

    select * from  {{ ref("seed_categories_traduit") }}

{% endsnapshot %}

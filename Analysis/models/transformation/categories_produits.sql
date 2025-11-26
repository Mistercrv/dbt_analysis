with categorie_produits as(
	select 
		categoryid as categorie_id,
		categoryname as categorie_name,
		description
	from  {{ ref("snp_categorie_produit") }}
	where dbt_valid_to is null
) 
select *
from categorie_produits
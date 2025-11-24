with categorie_produits as(
	select 
		categoryid as categorie_id,
		categoryname as categorie_name,
		description
	from  {{ ref("categories_traduit") }}
) 
select *
from categorie_produits
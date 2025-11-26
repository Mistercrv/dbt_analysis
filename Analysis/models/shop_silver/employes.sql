WITH employes AS (
    SELECT
		'IMA-' || LPAD(employeeid::text, 3, '0') AS employe_id,
		lastname as employe_nom,
		firstname as employe_prenom	
    FROM  {{ ref( 'snp_employees' ) }}
	where dbt_valid_to is null
)

SELECT *
FROM employes
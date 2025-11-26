WITH employes AS (
    SELECT
		'IMA-' || LPAD(employeeid::text, 3, '0') AS employe_id,
		lastname as employe_nom,
		firstname as employe_prenom	
    FROM  {{ source('stg', 'employees') }}
)

SELECT *
FROM employes
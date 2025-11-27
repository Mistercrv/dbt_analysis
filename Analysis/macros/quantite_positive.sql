{% test quantite_positive(model, column_name=None) %}

select *
from {{ model }}
where quantite <= 0 or quantite is null

{% endtest %}

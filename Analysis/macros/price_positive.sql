{% test price_positive(model, column_name=None) %}

select *
from {{ model }}
where {{ column_name }} <= 0 or {{ column_name }} is null

{% endtest %}

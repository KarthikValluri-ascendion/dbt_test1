{%macro get_season(x)%}
case when month(to_timestamp({{x}})) in (3,4,5) THEN 'SPRING'
when month(to_timestamp({{x}})) in (6,7,8) THEN 'SUMMER'
when month(to_timestamp({{x}})) in (12,1,2) THEN 'WINTER'
else 'AUTUMN'
end  
{% endmacro %}


{%macro get_daytype(x) %}
case when dayname(to_timestamp({{x}}))  in ('Sat', 'Sun') then 'WEEKEND'
else 'BUSINESSDAY'
end  
{%endmacro%}
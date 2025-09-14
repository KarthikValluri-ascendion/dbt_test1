with
    cte as (
        select
            date(to_timestamp(started_at)) as date_started_at,
            hour(to_timestamp(started_at)) as hour_started_at,
            day(to_timestamp(started_at)) as day_started_at,
            dayname(to_timestamp(started_at)) as dayname_started_at,
            {{get_daytype('STARTED_AT')}},
            {{ get_season("STARTED_AT") }}

        from {{ source("demo", "bike") }}
        where started_at != 'started_at'
    )
select *
from cte

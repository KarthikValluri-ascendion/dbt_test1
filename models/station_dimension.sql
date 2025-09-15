with cte as
(

    select 
    start_station_name ,
    start_statio_id as start_station_id,
    start_lat,
    start_lng

    
    from

    {{ source('demo', 'bike') }}
    where ride_id!='ride_id'
    group by
    start_station_name ,
    start_statio_id ,
    start_lat,
    start_lng

)
select * from cte
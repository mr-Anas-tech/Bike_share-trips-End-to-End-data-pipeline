with trips as(
    select * from
    {{ ref('stg_raw_trips') }}
),

date_cal as(
    select 
    trip_id,
    duration_sec,
    round(duration_sec/60, 2) as duaration_minute,
    start_date,
    end_date,
    start_date_time,
    end_date_time,
    extract(hour from start_date_time) as start_date_hour,
    extract(hour from end_date_time) as end_date_hour,
    extract(dayofweek  from start_date) as start_day_of_week,
    extract(dayofweek from end_date) as end_day_of_week,
    case 
    when extract(hour from start_date_time) in (7,8,9,10,16,17,18,19,20) then True
    else False end as is_peak_hour,
    bike_number,
    bike_share_for_all_trip,
    subscriber_type,
    c_subscription_type,
    member_birth_year,
    member_gender,
    start_station_id,
    end_station_id,
    start_station_geom,
    end_station_geom,
    start_station_latitude,
    end_station_latitude,
    start_station_longitude,
    end_station_longitude
    from trips 
)

select * from date_cal
with trip as(
    select * from {{ ref('int_trip_date_calculated') }}
),

station_lookup as(
    select * from {{ ref('int_station_region') }}
),

final as(
    select 
    t.trip_id,
    t.duration_sec,
    t.duration_minute,
    t.start_date,
    t.end_date,
    t.start_date_time,
    t.end_date_time,
    t.start_date_hour,
    t.end_date_hour,
    t.start_day_of_week,
    t.end_day_of_week,
    t.is_peak_hour,
    t.bike_number,
    t.bike_share_for_all_trip,
    t.subscriber_type,
    t.c_subscription_type,
    t.member_birth_year,
    t.member_gender,
    t.start_station_id,
    t.end_station_id,
     coalesce(t.start_station_name, 'Unknown') as start_station_name,
     coalesce(t.end_station_name, 'Unknown') as end_station_name,
    coalesce(t.start_station_geom, s_start.station_geom) as clean_start_station_geom,                                                                                                                                                                                                                                         
    coalesce(t.end_station_geom, s_end.station_geom) as clean_end_station_geom,
    coalesce(t.start_station_latitude, s_start.station_latitude) as clean_start_station_latitude,
    coalesce(t.end_station_latitude, s_end.station_latitude ) as clean_end_station_latitude,
    coalesce(t.start_station_longitude, s_start.station_longitude) as clean_start_station_longitude,
    coalesce(t.end_station_longitude, s_end.station_longitude) as clean_end_station_longitude
    from trip t
    left join station_lookup s_start
    on t.start_station_id = s_start.station_id
    left join station_lookup s_end
    on t.end_station_id = s_end.station_id
)


select * from  final
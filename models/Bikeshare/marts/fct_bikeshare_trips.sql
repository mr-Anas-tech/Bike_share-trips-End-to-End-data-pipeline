with trip as(
    select * from {{ ref('int_trip_date_calculated') }}
),

station_lookup as(
    select * from {{ ref('int_station_region') }}
),

final as(
    select 
    t.*,
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
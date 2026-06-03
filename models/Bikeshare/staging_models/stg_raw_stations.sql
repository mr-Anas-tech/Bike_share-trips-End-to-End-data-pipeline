with stations as(
    select * from {{ source('raw_bikeshare_trips', 'raw_stations')}}
),

clea_station as(
    select 
    coalesce(station_id, '0') as station_id,
    coalesce(name, 'Unknown') as station_name,
    coalesce(short_name, 'Unknown') as station_short_name,
    lat as station_latitude,
    lon as station_longitude,
    station_geom, 
    coalesce(region_id,  0) as region_id,
    coalesce(capacity, 0) as station_capacity,
    has_kiosk
    from stations
)

select * from clea_station
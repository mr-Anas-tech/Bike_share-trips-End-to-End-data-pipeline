with trips as(
    select * from {{ source('raw_bikeshare_trips', 'raw_trips') }}
),

trip_clean as(
    select 
    coalesce(trip_id, '0')   as trip_id,
    coalesce(duration_sec, 0) as duration_sec,
    extract(date from timestamp(coalesce(start_date, '1900-01-01 00:00:00'))) as start_date,
    extract(date from timestamp(coalesce(end_date, '1900-01-01 00:00:00'))) as end_date,
    extract(time from timestamp(coalesce(start_date, '1900-01-01 00:00:00'))) as start_date_time,
    extract(time  from timestamp(coalesce(end_date, '1900-01-01 00:00:00'))) as end_date_time,
    coalesce(start_station_name,  'Unknown') as start_station_name,
    coalesce(start_station_id, 0) as start_station_id,
    coalesce(end_station_name, 'Unknown') as end_station_name,
    coalesce(end_station_id, 0) as end_station_id,
    coalesce(bike_number, 0) as bike_number,
    coalesce(zip_code, '0') as zip_code,
    coalesce(subscriber_type, 'Unknown') as subscriber_type,
    coalesce(c_subscription_type, 'Unknown') as c_subscription_type,
    start_station_latitude,
    start_station_longitude,
    end_station_latitude,	
    end_station_longitude,
    start_station_geom,
    end_station_geom,	
    coalesce(member_birth_year, 1700) as member_birth_year,
    coalesce(member_gender, 'Unknown') as member_gender,
    coalesce(bike_share_for_all_trip, 'Unknown') as bike_share_for_all_trip
    from trips
)

    select * from trip_clean

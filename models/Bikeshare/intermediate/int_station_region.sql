with station as(
    select * from
    {{ ref('stg_raw_stations') }}
),

region as(
    select * from
    {{ ref('stg_raw_region') }}
),

final as(
    select 
    cast(s.station_id as INT64) as station_id,
    s.station_name,
    s.station_short_name,
    s.station_latitude,
    s.station_longitude,
    s.region_id,
    s.station_capacity,
    s.has_kiosk,
    coalesce(r.region_name, 'Unknown') as region_name,
    case 
    when s.station_geom is not null then s.station_geom
    else st_geogpoint( s.station_latitude, s.station_longitude) end as station_geom
    from station s
    left join region r
    on r.region_id=s.region_id
)

select * from final


select
    station_id,
    region_id,
    station_name,
    station_short_name,
    station_latitude,
    station_longitude,
    station_geom,
    has_kiosk,
    region_name
from {{ ref('int_station_region') }}
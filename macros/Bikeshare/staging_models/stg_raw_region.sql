with region as(
    select * from{{ source('raw_bikeshare_trips','raw_region')}}
),

clean_region as(
    select
    coalesce(region_id, 0) as region_id,
    coalesce(name, 'Unknown') as region_name
    from region
)

select * from clean_region
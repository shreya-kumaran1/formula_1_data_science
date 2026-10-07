{{
    config(
        enabled=true,
        severity='error',
        tags = ['bi']
    )
}}

with agg_lap_times_moving_avg as ( select * from {{ ref('agg_lap_times_moving_avg') }} )

select *
from   agg_lap_times_moving_avg
where  lap_moving_avg_5_years < 0 and lap_moving_avg_5_years is not null

{{
    config(
        enabled=true,
        severity='warn',
        tags = ['bi']
    )
}}


{{ test_all_values_gte_zero('agg_fastest_pit_stops_by_constructor', 'mean') }}

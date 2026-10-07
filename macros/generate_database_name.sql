{% macro generate_database_name(custom_database_name=none, node=none) -%}

    {%- set default_database = target.database -%}

    {%- if custom_database_name is not none -%}

        {{ custom_database_name | trim }}

    {%- elif target.name == 'default' and target.schema == 'dbt_skumaran' -%}

        formula1

    {%- else -%}

        {{ default_database }}

    {%- endif -%}

{%- endmacro %}

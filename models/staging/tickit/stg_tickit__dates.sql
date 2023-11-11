{{ config(materialized='view', bind=False) }}

with source as (

    select * from {{ source('tickit_external', 'date') }}

),

renamed as (

    select
        dateid as date_id,
        caldate as cal_date,
        day,
        month,
        year,
        week,
        qtr,
        holiday
    from
        source
    where
        date_id IS NOT NULL
    order by
        date_id

)

<<<<<<< HEAD
<<<<<<< HEAD

=======
>>>>>>> Update setup_redshift.sql
=======

>>>>>>> 1st commit
select * from renamed
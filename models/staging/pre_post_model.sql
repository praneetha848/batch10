{{ config(
    materialized="table",
    pre_hook="delete from {{ this }} where id is null",
    post_hook="TRUNCATE TABLE {{source('datafeed_shared_schema','raw_customers')}}" 
) }}

WITH tb1 as(
     select  * from {{source('datafeed_shared_schema','raw_customers')}})
select * from tb1

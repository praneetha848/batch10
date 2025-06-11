{{ config(materialized="incremental",
         unique_key='id',
         incremental_strategy="delete+insert",
         
) }}

select * from {{source('datafeed_shared_schema','raw_orders')}} where id in (1,2,3,4,5)

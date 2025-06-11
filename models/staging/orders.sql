{{ config(materialized='table') }}

WITH tb1 as(
    select id AS ORDER_ID,
    order_date,
    user_id AS CUST_ID,
    status
from {{source('datafeed_shared_schema','raw_orders')}}) 
select * from tb1
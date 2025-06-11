WITH tb1 as(
    select 
    ID as customer_id,
	FULL_NAME as name,
	EMAIL,
	PHONE ,
	SPENT, 
	UPDATED_AT
from {{source('datafeed_shared_schema','raw_customers')}}) 
select * from tb1
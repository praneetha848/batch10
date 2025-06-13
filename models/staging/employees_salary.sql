{{ config( materialized='table') }}

with
emp_data as (
     select Emp_ID as id,
             First_Name as name, 
             salary,
             tax_amount,
     ({{calculate_amount('salary','tax_amount')}}) as total_amount
    from 
    {{source('datafeed_shared_schema','emp_sal')}}
)
select * from emp_data

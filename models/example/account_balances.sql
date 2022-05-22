
{{config(materialized = "table")}}

with transformed_data as (
    select address from account_balances where balance > 500000
)

select * from transformed_data
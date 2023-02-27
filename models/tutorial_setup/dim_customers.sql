/* This is where joins will occur between different tables*/

{{
    config(
        materialized='table'
    )
}}

with customers as (
    
    select * from {{ref {('stg_customers')}}
),

orders as (
    select * from {{ref('stg_orders')}}
),


/* You'll need to identiy the right fields for lines to run correctly below */
customer_orders as (

    select 
        customer_id,

        min(order_date) as first_order_date,
        max(order_date) as most_recent_order_date,
        id as order_id,
        user_id as customer_id
        order_date,
        status
)












/* 
 with customers as (
    select
    id as customer_id,
    first_name,
    last_name

    from '[insert table name here'
)
 */
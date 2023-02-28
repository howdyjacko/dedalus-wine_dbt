
--checklist: 
--1. Find style guide for stg files
--2. this should be a select * statement
--3. once you find the instructions, paste the URL for documentation purposes. 

Order_ID
Order_Date
Attendee_Status
Name
Email
Event_Name
Ticket_Quantity
Ticket_Type
Ticket_Price
Buyer_Name
Buyer_Email


with eventbrite_customers as (
    
    select *
    id as customer_id
    first_name
    last_name

from dedalus-data.eventbrite_attendees
)

select * from eventbrite_attendees_table
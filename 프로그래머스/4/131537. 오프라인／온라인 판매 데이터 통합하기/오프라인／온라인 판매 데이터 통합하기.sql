# select DATE_FORMAT(SALES_DATE,'%Y-%m-%d') SALES_DATE, PRODUCT_ID, coalesce(USER_ID, 'NULL') USER_ID, SALES_AMOUNT
# from 

select DATE_FORMAT(SALES_DATE,'%Y-%m-%d') SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT
from (
    select SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT
    from ONLINE_SALE 
    where SALES_DATE like '2022-03%'
    union
    select SALES_DATE, PRODUCT_ID, NULL, SALES_AMOUNT
    from OFFLINE_SALE  
    where SALES_DATE like '2022-03%') a
order by SALES_DATE, PRODUCT_ID, USER_ID asc;
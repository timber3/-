

select ITEM_ID, ITEM_NAME, RARITY
from ITEM_INFO 
where ITEM_ID in (
    select ITEM_ID
    from ITEM_TREE 
    where PARENT_ITEM_ID in (
        select ITEM_ID
        from ITEM_INFO 
        where RARITY = 'RARE')
    )
order by ITEM_ID desc;
# Give:
$give @p[tag=bft.this_is_my_menu] tipped_arrow[potion_contents={potion:"$(potion)"}] $(count)

# Remove items:
item modify entity @s container.11 bft:-score
item replace entity @s container.3 with glass_bottle

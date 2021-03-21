/Counts items in a list
count (1; 2; 3)

/First/Last items from lists
first (1; 2; 3)
last (1; 2; 3)

/Compare lists
100 200 300~(100; 200 ; 300)

/List with no items
()

/Singelton in a list
enlist `item

/Accessing 1st item from a list
(100; 200; 300)[0]

/Assigning index
L:1 2 3
L[1]:42 /1 42 3

/Coalesce lists
L1:10 0N 30
L2:100 200 0N
L1^L2 /100 200 30

/Nested list
L2:((1;2;3);(`ab;`c))

/“rectangular” list. 3x4 matrix
((11; 12; 13; 14); (21; 22; 23; 24); (31; 32; 33; 34))

/Retreive multiple items from list
L[0 2]

/Return index of an item in a list
1001 1002 1003?1002 /1

/Remove duplicates from list
distinct 1 2 3 2 3 4 6 4 3 5 6

/Where condition
L:10 20 30 40 50
L[where L>20]
/print "Well done!"
"c"$0x57656c6c20646f6e6521

/Declare a variable 
a:42

/Show variable
show a:42

/Assign a variable based on anther variable
b:1+a:42 /43

/Change date
2000.01.01+5 /+5 days

/Change time
12:00:00.000000000+1000 /add 1000 nanoseconds

/True
1b

/False
0b

/String: symbols in q
`aapl

/List
(1; 1.2; `one)

/Range: til
til 10 /0 1 2 3 4 5 6 7 8 9
1+til 10 /1 2 3 4 5 6 7 8 9 10
1+2*til 10 /1 3 5 7 9 11 13 15 17 19

/Join list 
1 2 3,4 5 /1 2 3 4 5

/List slicing
2#til 10 /2 first items from the list
-2#til 10 /2 last items from the list
5# 1 2 3 /1 2 3 1 2 restarts at the beginning

/Repeat items in a list
5#`item /prints it out 5 times

/Assign atoms to a list
L:10 20 30

/Accessing list items by index
L[0]

/Functions
sq:{[x] x*x}
sq[5] /25

pyth:{[x;y] a:x*x; b:y*y; a+b}
pyth[3;4] /25

/prefix syntax function
f:{x*x}
f 5 /25


/"Lambda like" function
{x*x}[5] /25
{x*x} 5

/Return larger number 
42|98 /98

/Return smaller number 
42&98 /42

/Max in list
(|/) 20 10 40 30 /max can be used

/Min in list
(&/) 20 10 40 30 /min can be used

/Product
prd 2 2 /4

/Fibonacci numbers
10 {x,sum -2#x}/ 1 1

/Square root
sqrt(2)

/Successive differences of a numeric list
deltas 1 2 3 4 5 /1 1 1 1 1

/Count items in list
count (1 2 3; 10 20) /2
count each (1 2 3; 10 20) /3 2

/Dictionary
`a`b`c!10 20 30

/Get first row of a dictionary
dc[;0]

/transpose
flip
t:flip `c1`c2!(10 20 30; 1.1 2.2 3.3)  /example

/table
flip `c1`c2!(10 20 30; 1.1 2.2 3.3)
([] c1:10 20 30; c2:1.1 2.2 3.3) /other syntax

/q-sql select *
select from t

/operations on columns
select c1, val:2*c3 from t /Equivalent to SELECT c1, (c3*2) as VAL FROM t

/Table aggregations
select count c1, sum c3 by c2 from t
select avg px, avg vol by sym from trades

/Grouping a computed column
select count c2 by ovrund:c3<=40 from t

/Update statement
update c3:10*c3 from t where c2=`a

/Sort in ascending order
`c2 xasc t

/Generate 10 seudo-random numbers between 0-20
10?20

/1,000,000 random dates
dts:2015.01.01+1000000?31

/1,000,000 random timespans
tms:1000000?24:00:00.000000000

/head(5)
trades:([] dt:dts; tm:tms; sym:syms; vol:vols; px:pxs)
5#trades

/Weighted average
1 2 3 wavg 50 60 70 /63.333

/100-millisecond bucketed volume-weighted average price (VWAP)
select vwap:vol wavg px by sym,bkt:100000000 xbar tm from trades

/Difference between max and min price for an asset
select max px-mins px from trades where sym=`aapl

/Char
"a"
"string"

/Atom
`string

/atom!=string

/save file as binary
`:/home/konrad/q/l32/q4m/t set t

/open saved file
get `:/home/konrad/q/l32/q4m/t

/Write txt file
`:/home/konrad/q/l32/q4m/examples/life.txt 0: ("Meaning";"of";"life")

/Read txt file
read0 `:/home/konrad/q/l32/q4m/examples/life.txt

/Save csv file
`:/home/konrad/q/l32/q4m/examples/t.csv 0: csv 0: t

/Read csv with "," separator
("SF"; enlist ",") 0: `:/home/konrad/q/l32/q4m/examples/t.csv

//Negative number
neg(1)

//Sum
sum(1,3)


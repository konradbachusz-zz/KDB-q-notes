//Booleans can be multiploed by
q)flag:1b
q)base:100
q)base+flag*42
142

//GUID (globally unique identifier) 
1?0Ng //,8c6b8b64-6815-6084-0a3e-178401251b68, the int at the beginning indicates the number of guids

/Importing a guid
"G"$"61f35174-90bc-a48a-d88f-e15e4a377ec8"

/Create guid from a list of 16 bytes
0x0 sv 16?0xff

/Symbol with blanks
`$"A symbol with blanks and `"

/Convert date to int
`int$2000.02.01 /31i

/Convert time to int
`int$12:00:00.000

/Extract date
`date$2000.01.02T12:00:00.000

/Extract time
`time$2000.01.02T12:00:00.000

/Use a timestamp instead of a datetime for a key column or in a join. Or separate into date and time columns.
/e.g 2014.11.22D17:43:40.123456789

/Month
2015.11m /2015.11m!=2015.11

/Get int from minute
`int$12:00

/Get into from second
`int$12:34:56

/Extract part of date/time
dt:2014.01.01 /Assign date
dt.year /get year
dt.mm /get month
dt.dd /get day

ti:12:34:56.789 /Assign time
ti.hh /Get hour
ti.mm /Get month
ti.ss /Get second

/Extract miliseconds from time
(`int$12:34:56.789) mod 1000

/Extract nanoseconds from time
(`long$12:34:56.123456789) mod 1000000000


/Arithmetic Infinities and Nulls
/ 0w 	Positive float infinity
/ -0w 	Negative float infinity
/ 0n 	Null float ; NaN, or not a number
/ 0W 	Positive long infinity
/ -0W 	Negative long infinity
/ 0N 	Null long

/The value "" is not a null char. It is an empty list of char.

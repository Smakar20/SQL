/*Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters
in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

The STATION table is described as follows:

+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMERIC    |
| LONG_W      | NUMERIC    |
+-------------+------------+

Sample Input

Let's say that CITY only has four entries: DEF, ABC, PQRS and WXY

Sample Output

ABC 3
PQRS 4
*/

select * from (select city, LENGTH(city) from station order by LENGTH(city) asc, city asc) where rownum = 1 union 
select * from (select city, LENGTH(city) from station order by LENGTH(city) desc, city asc) where rownum = 1;

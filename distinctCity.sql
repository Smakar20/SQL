/*Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain 
duplicates.

Input Format

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

*/

select distinct city from station where lower(substr(city,0,1)) NOT IN ('a','e','i','o','u') OR 
lower(substr(city,length(city),1)) NOT IN ('a','e','i','o','u');

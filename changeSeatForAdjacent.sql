/*Mary is a teacher in a middle school and she has a table seat storing students' names and their corresponding seat ids.

The column id is continuous increment.
Mary wants to change seats for the adjacent students.
Can you write a SQL query to output the result for Mary?
+---------+---------+
|    id   | student |
+---------+---------+
|    1    | Abbot   |
|    2    | Doris   |
|    3    | Emerson |
|    4    | Green   |
|    5    | Jeames  |
+---------+---------+
For the sample input, the output is:
+---------+---------+
|    id   | student |
+---------+---------+
|    1    | Doris   |
|    2    | Abbot   |
|    3    | Green   |
|    4    | Emerson |
|    5    | Jeames  |
+---------+---------+
Note:
If the number of students is odd, there is no need to change the last one's seat.
*/

select s1.id, s2.student from seat s1 join seat s2
on case  when mod(s1.id, 2) = 1 and s1.id <> (select count(*) from seat) then s1.id + 1 = s2.id
         when mod(s1.id, 2) = 0 then s1.id = s2.id + 1
         else s1.id = s2.id  
   end
order by s1.id;

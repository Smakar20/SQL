/*The Employee table holds all employees. Every employee has an Id, a salary, and there is also a column for the department Id.

+----+-------+--------+--------------+
| Id | Name  | Salary | DepartmentId |
+----+-------+--------+--------------+
| 1  | Joe   | 70000  | 1            |
| 2  | Henry | 80000  | 2            |
| 3  | Sam   | 60000  | 2            |
| 4  | Max   | 90000  | 1            |
+----+-------+--------+--------------+
The Department table holds all departments of the company.

+----+----------+
| Id | Name     |
+----+----------+
| 1  | IT       |
| 2  | Sales    |
+----+----------+
Write a SQL query to find employees who have the highest salary in each of the departments. For the above tables, Max has the highest 
salary in the IT department and Henry has the highest salary in the Sales department.

+------------+----------+--------+
| Department | Employee | Salary |
+------------+----------+--------+
| IT         | Max      | 90000  |
| Sales      | Henry    | 80000  |
+------------+----------+--------+

*/

select
d.Name, e.Name, e.Salary
from
Department d,
Employee e,
(select MAX(Salary) as Salary,  DepartmentId from Employee GROUP BY DepartmentId) h
where
e.Salary = h.Salary and
e.DepartmentId = h.DepartmentId and
e.DepartmentId = d.Id;

/*another way*/
select d.name as department, e.name as employee, e.salary 
from employee e, department d 
where e.departmentid = d.id 
and (e.departmentid, e.salary) in (select departmentid, max(salary) from employee group by departmentid);

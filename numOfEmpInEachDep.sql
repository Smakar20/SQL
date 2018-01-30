/*Given employee and department tables, output department name and number of employees in each department with number of employees in 
descending order. In case there are more than 1 department with same count on employees, sort them alphabetically in ascending order.
*/

SELECT department_name AS department, 
COUNT(employees.EMPLOYEE_ID) AS count
FROM departments 
left JOIN employees 
ON employees.department_id = departments.department_id 
GROUP BY departments.department_id
ORDER BY count desc, department;

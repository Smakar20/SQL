/*Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following 
statements for each record in the table:

Equilateral: It's a triangle with  sides of equal length.
Isosceles: It's a triangle with  sides of equal length.
Scalene: It's a triangle with  sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.

The TRIANGLES table is described as follows:
+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| A           | INTEGER    |
| B           | INTEGER    |
| C           | INTEGER    |
+-------------+------------+

Each row in the table denotes the lengths of each of a triangle's three sides.

Sample Input
A    B    C
20   20   23
20   20   20
20   21   22
13   14   30

Sample Output

Isosceles
Equilateral
Scalene
Not A Triangle
Explanation

Values in the tuple  form an Isosceles triangle, because . 
Values in the tuple  form an Equilateral triangle, because . Values in the tuple form a Scalene triangle, because . 
Values in the tuple  cannot form a triangle because the combined value of sides  and  is not larger than that of side .
*/

select case when(a + b <= c or a + c <= b or b + c <= a) then
        'Not A Triangle'  
        when(a = b and b = c) then
        'Equilateral'
        when(a = b or a = c or b = c) then
        'Isosceles' 
        else   
        'Scalene'
        end type_of_triangle 
        from triangles;
        

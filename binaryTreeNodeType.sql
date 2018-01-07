/*You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent 
of N.

Column          Type
N               Integer
p               Integer

Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:

Root: If node is root node.
Leaf: If node is leaf node.
Inner: If node is neither root nor leaf node.

Sample Input

N           p
1           2
3           2
6           8
9           8
2           5
8           5
5           null

Sample Output

1 Leaf
2 Inner
3 Leaf
5 Root
6 Leaf
8 Inner
9 Leaf
*/

select N, case when P is NULL then 
'Root' 
when N in (select B1.P from BST B1 join BST B2 on B1.P=B2.N ) then 
'Inner' 
else 
'Leaf' 
end as Node 
from BST order by N;

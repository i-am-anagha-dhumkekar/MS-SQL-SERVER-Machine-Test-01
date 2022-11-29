/*2.Calculate the average weight of the computers in use.*/

SELECT AVG(Weight) AS [Average weight]
FROM COMPUTER_NIS1016
WHERE EmployeeId IS NOT NULL;

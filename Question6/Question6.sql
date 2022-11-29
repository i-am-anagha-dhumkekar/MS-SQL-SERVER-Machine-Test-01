/*6.Create a VIEW with the list of employee name, their computer serial
number, and the city that they were manufactured in. Use a join.*/

CREATE VIEW vw_List
AS
SELECT e.EmpName ,c.SerialNumber,m.City
FROM Employee_NIS1016 e
JOIN COMPUTER_NIS1016 c
ON e.EmployeeId=c.EmployeeId
JOIN Manufacturer_NIS1016 m
ON c.MfName=m.MfName

SELECT * FROM vw_List

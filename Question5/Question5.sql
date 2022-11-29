/*5.List the manufacturer names of companies that do not have any
computers in use. Use a subquery.*/

SELECT MfName
FROM Manufacturer_NIS1016
WHERE MfName NOT IN (SELECT MfName FROM COMPUTER_NIS1016);
/*4.List the serial numbers for computers that have a weight below
average.*/

SELECT SerialNumber,Weight
FROM COMPUTER_NIS1016
WHERE Weight < (SELECT AVG(Weight) FROM COMPUTER_NIS1016);
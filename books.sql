SELECT SUM(pages)AS Total FROM Boooks 

SELECT name FROM Boooks
where YearPress >= 2007

INSERT INTO boooks
(Id, Name , YearPress , Themes , Author , Press , Comment , Quantity)
VALUES
( 19, 'SQL' , '2004' ,  'Базы_данных' , 'Генник' , 'Питер' , 'Карманный_справочник','3')
SELECT * FROM Boooks

UPDATE Boooks
SET YearPress=2007
WHERE Press='BHV'
SELECT * FROM Boooks

UPDATE Boooks
SET Quantity=Quantity + 2
WHERE Press='Питер'
SELECT * FROM Boooks

DELETE FROM Boooks
WHERE Press='BHV'AND
Name LIKE '.*6.*' 
SELECT * FROM Boooks

SELECT COUNT(Quantity) FROM Boooks

SELECT count (Themes)FROM Boooks 
WHERE Themes is not null

SELECT SUM(Pages)FROM Boooks
WHERE Press='Питер'

SELECT MAX(Pages) FROM Boooks
SELECT MIN(Pages) FROM Boooks
SELECT AVG(Pages) FROM Boooks

SELECT COUNT(Quantity) AS Total , Press FROM Boooks
GROUP BY Press
SELECT COUNT(Quantity) AS Total, Themes, Press FROM Boooks
GROUP BY Press, Themes
SELECT COUNT(Quantity) AS Quantity, Themes FROM Boooks
 WHERE Press IN ('BHV', 'Питер')
 GROUP By themes

SELECT Themes FROM Boooks
Where Quantity > 1
SELECT SUM(Quantity) AS Total , Themes FROM Boooks
GROUP BY Themes

SELECT Themes FROM Boooks
GROUP BY Themes
HAVING SUM(Quantity) > 3
SELECT Themes FROM Boooks
WHERE Press IN ('BHV','Питер')
GROUP BY Themes
HAVING SUM(Quantity) > 3

SELECT TOP 1 Name FROM Boooks 
ORDER BY Quantity DESC 
SELECT TOP 1 Name from Boooks 
ORDER BY YearPress desc 


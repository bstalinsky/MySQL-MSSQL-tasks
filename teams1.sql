SELECT * FROM Continent
SELECT * FROM Country
SELECT * FROM CountryLanguage
SELECT * FROM Currency
SELECT * FROM Language

SELECT Continent.Name,  Country.Name FROM Continent JOIN Country
ON Continent.Id=Country.ContinentId
ORDER BY Continent.Name ASC ,  Country.Name DESC

SELECT Country.Name , Continent.Name FROM Country JOIN Continent 
ON Country.ContinentId=Continent.Id
WHERE Champion >= 1
ORDER BY Continent.Name DESC , Country.Name ASC

SELECT Country.Name , Language.Name FROM Country JOIN Language 
ON Country.Id=Language.Id
ORDER BY Language.Name



SELECT Country.Name FROM Country
JOIN Continent ON Country.ContinentId=Continent.Id
JOIN Currency ON Country.CurrencyId=Currency.Id
JOIN CountryLanguage ON Country.Id=CountryLanguage.CountryId
JOIN Language ON Language.Id=CountryLanguage.LanguageId
WHERE Continent.Name LIKE '%�������%'
AND Currency.Name != '������ ���'
AND Language.Name !='���������'


SELECT Continent.Name,  Country.Name FROM Continent JOIN Country
ON Continent.Id=Country.ContinentId
WHERE debut=0
ORDER BY Continent.Name ASC,  Country.Name DESC

SELECT Country.Name FROM Country
JOIN Continent ON Country.ContinentId=Continent.Id
JOIN CountryLanguage ON Country.Id=CountryLanguage.CountryId
JOIN Language ON Language.Id=CountryLanguage.LanguageId
WHERE Continent.Name = '������'
AND Language.Name='����������'

SELECT Country.Name FROM Country JOIN Currency
ON Country.CurrencyId=Currency.Id
WHERE Champion<1 
AND Currency.Name= '����'

SELECT Country.Name FROM Country JOIN Language
ON Country.Id=Language.Id
WHERE Debut>0
AND Language.Name= '����������'

SELECT Continent.Name,  Country.Name FROM Continent JOIN Country
ON Continent.Id=Country.ContinentId
JOIN Language ON Country.Id=Language.Id
WHERE Language.Name='����������'
ORDER BY Country.Name ASC

SELECT Continent.Name,  Country.Name FROM Continent JOIN Country
ON Continent.Id=Country.ContinentId
WHERE Continent.Name != '������'
AND Champion >= 1

SELECT COUNT (Country.NAME) AS Total FROM Country JOIN Language
ON Country.ID=Language.Id
WHERE Language.Name='����������'

SELECT COUNT (Country.NAME) AS Total FROM Country JOIN Currency
ON Country.CurrencyId=Currency.Id
WHERE Currency.Name='����'

SELECT COUNT (Country.NAME) AS Total FROM Country 
WHERE Champion >=1

SELECT AVG(Territory) AS 'Average size' FROM Country

SELECT SUM(Champion) AS 'Total Champ' FROM Country

SELECT COUNT(Name) AS 'Champ title for one' FROM Country
WHERE Champion >= 1

SELECT COUNT(Name) AS 'Euroasia' FROM Country JOIN Continent
ON Country.ContinentId=Continent.Id
WHERE Continent.Name= ('������','����')

SELECT MIN(Territory) AS 'MIN size' FROM Country

SELECT COUNT(Name) AS 'DEBUT' FROM Country
WHERE Debut > 0

SELECT COUNT(Name) AS 'Quantity' FROM Country







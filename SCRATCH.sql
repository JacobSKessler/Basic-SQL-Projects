USE [AdventureWorks2014]
GO


select * from [Sales].[SalesTerritory];
select * from [Person].[CountryRegion];
select * from [Person].[StateProvince];



create procedure dbo.testStateCode4 @state nvarchar(3), @state2 nvarchar(3)
as
select * from [Person].[StateProvince]
inner join [Person].[CountryRegion] on [Person].[CountryRegion].[CountryRegionCode] = [Person].[StateProvince].CountryRegionCode
inner join [Sales].[SalesTerritory] on [Sales].[SalesTerritory].[Name] = [Person].[CountryRegion].[Name]
where [Person].[StateProvince].[StateProvinceCode] = @state
or [Person].[StateProvince].[StateProvinceCode] = @state2
;

exec dbo.testStateCode4 @state = 'AB', @state2 = 'BC';




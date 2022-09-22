--Create Project 
Create database Project;

--Use Project
Use Project;

--Import Table BSE500
SELECT * FROM [dbo].[BSE500 - bse500]

--Create Sector Wise High 1 year Return Table
select * into #table2 from(
Select Sector, max(_1_Year_Return) as Maximum_1_Year_Return from [dbo].[BSE500 - bse500] group by Sector)c;

--Sectorwise Companies with High 1 year Return
Select A.sector,B.Company,A.Maximum_1_Year_Return from #table2 as A Inner join
[dbo].[BSE500 - bse500] AS B on A.Maximum_1_Year_Return = B._1_Year_Return
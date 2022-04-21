USE  receita
drop table  dbo.estabelecimentos

create table dbo.estabelecimentos (col1 VARCHAR(150) null,col2 VARCHAR(150) null,col3 VARCHAR(150) null,col4 VARCHAR(150) null,col5 VARCHAR(150) null,
col6 VARCHAR(150) null,col7 VARCHAR(150) null,col8 VARCHAR(150) null,col9 VARCHAR(150) null,col10 VARCHAR(150) null,col11 VARCHAR(150) null,
col12 VARCHAR(150) null,col13 varchar(1000) null,col14 VARCHAR(150) null,col15 VARCHAR(150) null,col16 VARCHAR(150) null,col17 varchar(250) null,
col18 VARCHAR(150) null,col19 VARCHAR(150) null,col20 VARCHAR(150) null,col21 VARCHAR(150) null,col22 VARCHAR(150) null,col23 VARCHAR(150) null,
col24 VARCHAR(150) null,col25 VARCHAR(150) null,col26 VARCHAR(150) null,col27 VARCHAR(150) null,col28 VARCHAR(150) null,col29 VARCHAR(150) null,
col30 VARCHAR(150) null)

SELECT * FROM dbo.estabelecimentos

--nao funcionou
--declare @i int =5
--declare @txt1 VARCHAR(150) 
--while  @i<10
--begin
--print(@i)
--set @txt1= concat('C:\Users\nasse\Documents\dados receita\Base_Estabelecimentos\estab',@i,'\estab',@i,'.csv')
--set @i=@i+1
--print(@txt1)
--BULK INSERT dbo.estabelecimentos
--FROM (select @txt1)
--WITH ( 
--	FORMAT='CSV'
--	,FIRSTROW = 1,
--    FIELDTERMINATOR = ';',
--    ROWTERMINATOR = '0x0a',
--    BATCHSIZE=1000000,
--    MAXERRORS=2
--	);

--end

BULK INSERT dbo.estabelecimentos
FROM 'C:\Users\nasse\Documents\dados receita\Base_Estabelecimentos\estab0\estab0.csv'
WITH ( 
	FORMAT='CSV'
	,FIRSTROW = 1,
    FIELDTERMINATOR = ';',
    ROWTERMINATOR = '0x0a',
    BATCHSIZE=1000000,
    MAXERRORS=2
	);


BULK INSERT dbo.estabelecimentos
FROM 'C:\Users\nasse\Documents\dados receita\Base_Estabelecimentos\estab1\estab1.csv'
WITH ( 
	FORMAT='CSV'
	,FIRSTROW = 1,
    FIELDTERMINATOR = ';',
    ROWTERMINATOR = '0x0a',
    BATCHSIZE=1000000,
    MAXERRORS=2
	);


	
BULK INSERT dbo.estabelecimentos
FROM 'C:\Users\nasse\Documents\dados receita\Base_Estabelecimentos\estab2\estab2.csv'
WITH ( 
	FORMAT='CSV'
	,FIRSTROW = 1,
    FIELDTERMINATOR = ';',
    ROWTERMINATOR = '0x0a',
    BATCHSIZE=1000000,
    MAXERRORS=2
	);


	
BULK INSERT dbo.estabelecimentos
FROM 'C:\Users\nasse\Documents\dados receita\Base_Estabelecimentos\estab3\estab3.csv'
WITH ( 
	FORMAT='CSV'
	,FIRSTROW = 1,
    FIELDTERMINATOR = ';',
    ROWTERMINATOR = '0x0a',
    BATCHSIZE=1000000,
    MAXERRORS=2
	);


	
BULK INSERT dbo.estabelecimentos
FROM 'C:\Users\nasse\Documents\dados receita\Base_Estabelecimentos\estab4\estab4.csv'
WITH ( 
	FORMAT='CSV'
	,FIRSTROW = 1,
    FIELDTERMINATOR = ';',
    ROWTERMINATOR = '0x0a',
    BATCHSIZE=1000000,
    MAXERRORS=2
	);


BULK INSERT dbo.estabelecimentos
FROM 'C:\Users\nasse\Documents\dados receita\Base_Estabelecimentos\estab5\estab5.csv'
WITH ( 
	FORMAT='CSV'
	,FIRSTROW = 1,
    FIELDTERMINATOR = ';',
    ROWTERMINATOR = '0x0a',
    BATCHSIZE=1000000,
    MAXERRORS=2
	);


	BULK INSERT dbo.estabelecimentos
FROM 'C:\Users\nasse\Documents\dados receita\Base_Estabelecimentos\estab6\estab6.csv'
WITH ( 
	FORMAT='CSV'
	,FIRSTROW = 1,
    FIELDTERMINATOR = ';',
    ROWTERMINATOR = '0x0a',
    BATCHSIZE=1000000,
    MAXERRORS=2
	);


	BULK INSERT dbo.estabelecimentos
FROM 'C:\Users\nasse\Documents\dados receita\Base_Estabelecimentos\estab7\estab7.csv'
WITH ( 
	FORMAT='CSV'
	,FIRSTROW = 1,
    FIELDTERMINATOR = ';',
    ROWTERMINATOR = '0x0a',
    BATCHSIZE=1000000,
    MAXERRORS=2
	);


	

	BULK INSERT dbo.estabelecimentos
FROM 'C:\Users\nasse\Documents\dados receita\Base_Estabelecimentos\estab8\estab8.csv'
WITH ( 
	FORMAT='CSV'
	,FIRSTROW = 1,
    FIELDTERMINATOR = ';',
    ROWTERMINATOR = '0x0a',
    BATCHSIZE=1000000,
    MAXERRORS=2
	);


	BULK INSERT dbo.estabelecimentos
FROM 'C:\Users\nasse\Documents\dados receita\Base_Estabelecimentos\estab9\estab9.csv'
WITH ( 
	FORMAT='CSV'
	,FIRSTROW = 1,
    FIELDTERMINATOR = ';',
    ROWTERMINATOR = '0x0a',
    BATCHSIZE=1000000,
    MAXERRORS=2
	);

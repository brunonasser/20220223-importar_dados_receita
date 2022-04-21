
alter procedure estabelecimento

as
begin


if OBJECT_ID('receita.dbo.estabelecimentos0') is not null
begin
drop table  dbo.estabelecimentos0
end

create table dbo.estabelecimentos0 (col1 VARCHAR(150) null,col2 VARCHAR(150) null,col3 VARCHAR(150) null,col4 VARCHAR(150) null,col5 VARCHAR(150) null,
col6 VARCHAR(150) null,col7 VARCHAR(150) null,col8 VARCHAR(150) null,col9 VARCHAR(150) null,col10 VARCHAR(150) null,col11 VARCHAR(150) null,
col12 VARCHAR(150) null,col13 varchar(1000) null,col14 VARCHAR(150) null,col15 VARCHAR(150) null,col16 VARCHAR(150) null,col17 varchar(250) null,
col18 VARCHAR(150) null,col19 VARCHAR(150) null,col20 VARCHAR(150) null,col21 VARCHAR(150) null,col22 VARCHAR(150) null,col23 VARCHAR(150) null,
col24 VARCHAR(150) null,col25 VARCHAR(150) null,col26 VARCHAR(150) null,col27 VARCHAR(150) null,col28 VARCHAR(150) null,col29 VARCHAR(150) null,
col30 VARCHAR(150) null)



--nao funcionou
--declare @i int =5
--declare @txt1 VARCHAR(150) 
--while  @i<10
--begin
--print(@i)
--set @txt1= concat('C:\Users\nasse\Documents\dados receita\Base_Estabelecimentos\estab',@i,'\estab',@i,'.csv')
--set @i=@i+1
--print(@txt1)
--BULK INSERT dbo.estabelecimentos0
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

BULK INSERT dbo.estabelecimentos0
FROM 'C:\Users\nasse\Documents\dados receita\Base_Estabelecimentos\estab0\estab0.csv'
WITH ( 
	FORMAT='CSV'
	,FIRSTROW = 1,
    FIELDTERMINATOR = ';',
    ROWTERMINATOR = '0x0a',
    BATCHSIZE=1000000,
    MAXERRORS=2
	);


BULK INSERT dbo.estabelecimentos0
FROM 'C:\Users\nasse\Documents\dados receita\Base_Estabelecimentos\estab1\estab1.csv'
WITH ( 
	FORMAT='CSV'
	,FIRSTROW = 1,
    FIELDTERMINATOR = ';',
    ROWTERMINATOR = '0x0a',
    BATCHSIZE=1000000,
    MAXERRORS=2
	);


	
BULK INSERT dbo.estabelecimentos0
FROM 'C:\Users\nasse\Documents\dados receita\Base_Estabelecimentos\estab2\estab2.csv'
WITH ( 
	FORMAT='CSV'
	,FIRSTROW = 1,
    FIELDTERMINATOR = ';',
    ROWTERMINATOR = '0x0a',
    BATCHSIZE=1000000,
    MAXERRORS=2
	);


	
BULK INSERT dbo.estabelecimentos0
FROM 'C:\Users\nasse\Documents\dados receita\Base_Estabelecimentos\estab3\estab3.csv'
WITH ( 
	FORMAT='CSV'
	,FIRSTROW = 1,
    FIELDTERMINATOR = ';',
    ROWTERMINATOR = '0x0a',
    BATCHSIZE=1000000,
    MAXERRORS=2
	);


	
BULK INSERT dbo.estabelecimentos0
FROM 'C:\Users\nasse\Documents\dados receita\Base_Estabelecimentos\estab4\estab4.csv'
WITH ( 
	FORMAT='CSV'
	,FIRSTROW = 1,
    FIELDTERMINATOR = ';',
    ROWTERMINATOR = '0x0a',
    BATCHSIZE=1000000,
    MAXERRORS=2
	);


BULK INSERT dbo.estabelecimentos0
FROM 'C:\Users\nasse\Documents\dados receita\Base_Estabelecimentos\estab5\estab5.csv'
WITH ( 
	FORMAT='CSV'
	,FIRSTROW = 1,
    FIELDTERMINATOR = ';',
    ROWTERMINATOR = '0x0a',
    BATCHSIZE=1000000,
    MAXERRORS=2
	);


	BULK INSERT dbo.estabelecimentos0
FROM 'C:\Users\nasse\Documents\dados receita\Base_Estabelecimentos\estab6\estab6.csv'
WITH ( 
	FORMAT='CSV'
	,FIRSTROW = 1,
    FIELDTERMINATOR = ';',
    ROWTERMINATOR = '0x0a',
    BATCHSIZE=1000000,
    MAXERRORS=2
	);


	BULK INSERT dbo.estabelecimentos0
FROM 'C:\Users\nasse\Documents\dados receita\Base_Estabelecimentos\estab7\estab7.csv'
WITH ( 
	FORMAT='CSV'
	,FIRSTROW = 1,
    FIELDTERMINATOR = ';',
    ROWTERMINATOR = '0x0a',
    BATCHSIZE=1000000,
    MAXERRORS=2
	);


	

	BULK INSERT dbo.estabelecimentos0
FROM 'C:\Users\nasse\Documents\dados receita\Base_Estabelecimentos\estab8\estab8.csv'
WITH ( 
	FORMAT='CSV'
	,FIRSTROW = 1,
    FIELDTERMINATOR = ';',
    ROWTERMINATOR = '0x0a',
    BATCHSIZE=1000000,
    MAXERRORS=2
	);


	BULK INSERT dbo.estabelecimentos0
FROM 'C:\Users\nasse\Documents\dados receita\Base_Estabelecimentos\estab9\estab9.csv'
WITH ( 
	FORMAT='CSV'
	,FIRSTROW = 1,
    FIELDTERMINATOR = ';',
    ROWTERMINATOR = '0x0a',
    BATCHSIZE=1000000,
    MAXERRORS=2
	);



if OBJECT_ID('receita.dbo.estabelecimentos_bkp') is not null
begin
drop table  dbo.estabelecimentos_bkp
end

select * into dbo.estabelecimentos_bkp from dbo.estabelecimentos
	

CREATE    TABLE   receita.dbo.estabelecimentos (
CNPJ_BASICO varchar(8) --PRIMARY KEY CLUSTERED  --COLOCAR TRIM
,CNPJ_ORDEM VARCHAR(4) --COLOCAR TRIM
,CNPJ_DV VARCHAR(2)
,ID_MATRIZ_FILIAL TINYINT
,NOME_FANTASIA VARCHAR(55)  --COLOCAR TRIM
,SITUACAO_CADASTRAL TINYINT
,DATA_SITUACAO_CADASTRAL DATE		--COL7  CONVERT(DATE,COL7,112),MOTIVO_SITUACAO_CADASTRAL TINYINT,NOME_DA_CIDADE_NO_EXTERIOR	VARCHAR(55)			--COL9,PAIS VARCHAR(3),DATA_DE_INICIO_ATIVIDADE DATE		--INSIGHT: QUAL A MEDIA DE TEMPO QUE O SETOR ESTA FUNCIONANDO ,QTOS ANOS 
,CNAE_PRINCIPAL VARCHAR(7),CNAE_SECUNDARIA VARCHAR(800),TIPO_LOGRADOURO VARCHAR(20)
,LOGRADOURO VARCHAR(60)
,NUMERO VARCHAR(6)
,COMPLEMENTO VARCHAR(160)		--COL17
,BAIRRO VARCHAR(50)
,CEP VARCHAR(8)
,UF VARCHAR(2)
,CODIGO_MUNICIPIO VARCHAR(4)		--ENTENDER MELHOR ESSES CODIGOS
,DDD1 VARCHAR(4)
,TELEFONE1 VARCHAR(9)
,DDD2 VARCHAR(4)
,TELEFONE2 VARCHAR(9)
,DDD_FAX VARCHAR(4)
,FAX VARCHAR(8)
,EMAIL VARCHAR(150)
,SITUACAO_ESPECIAL VARCHAR(25)		--ENTENDER MELHOR
,DATA_SITUACAO_ESPECIAL VARCHAR(8))

-- Create a nonclustered index on a table or view
CREATE nonclustered INDEX ix_cnpj ON receita.dbo.estabelecimentos (CNPJ_BASICO);

/****** Script for SelectTopNRows command from SSMS  ******/
INSERT INTO   receita.dbo.estabelecimentos
SELECT distinct trim ([col1])
      ,trim ([col2])
      ,trim ([col3])
      ,trim ([col4]	)	--
      ,trim ([col5])
      ,trim ([col6])
      ,case when len(trim(COL7))<>8 then null else convert(date,trim(COL7),112) end 
      ,trim ([col8])
      ,trim ([col9])
      ,trim ([col10])
      ,case when len(trim(COL11))<>8 then null else convert(date,trim(COL11),112) end 
      ,trim ([col12])
      ,trim ([col13])
      ,trim ([col14])
      ,trim ([col15])
      ,trim ([col16])
      ,trim ([col17])
	  ,trim ([col18])
      ,trim ([col19])
      ,trim ([col20])
      ,trim ([col21])
      ,trim ([col22])
      ,trim ([col23])
      ,trim ([col24])
      ,trim ([col25])
      ,trim ([col26])
      ,trim ([col27])
      ,trim ([col28])
      ,trim ([col29])
      ,case when len(trim(COL30))<>8 then null else convert(date,trim(COL30),112) end 
  FROM [RECEITA].[dbo].[estabelecimentos0]
 

 end

 
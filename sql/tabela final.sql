
--INSIGHTS: 
--QUAL A MEDIA DE TEMPO QUE AS EMPRESAS DESTE SETOR FICAM FUNCIONANDO, FAZER BOXPLOT
--QTO TEMPO ESTA EMPRESA ESTA ABERTA
--O SETOR DESTA EMPRESA ESTA CRESCENDO NOS ULTIMOS ANOS? QUAL A TAXA?
--EXISTEM OUTRAS EMPRESAS COM CARACTERISTICAS SEMELHANTES DESTA PESQUISADA (TEMPO, REGIAO,TIPO, SETOR ...)
--INSIGHTS DA SITUACAO ESPECIAL
--QUAL A MEDIA DE VIDA DO SETOR E SE ESTA EMPRESA ESTA ACIMA DA MEDIA OU NAO

use receita
CREATE   TABLE   receita.dbo.estabelecimentos_V2 (
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



/****** Script for SelectTopNRows command from SSMS  ******/
INSERT INTO   receita.dbo.estabelecimentos_V2
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
  FROM [RECEITA].[dbo].[estabelecimentos]
  --where len([col7])=8 and len([col11])=8 and 

 


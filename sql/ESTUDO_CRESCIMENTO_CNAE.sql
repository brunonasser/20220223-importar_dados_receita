/****** Script for SelectTopNRows command from SSMS  ******/
use master

CREATE    TABLE  DBO.CNAE_CALCULO (
CNAE_PRINCIPAL VARCHAR(8) PRIMARY KEY CLUSTERED
,QTD_ATIVA_ATUAL BIGINT
,QTD_ATIVA_ULTIMOS_ANOS BIGINT
,QTD_OUTROS_ULTIMOS_ANOS BIGINT) 


INSERT INTO   DBO.CNAE_CALCULO
SELECT 
	
	CNAE_PRINCIPAL

	,count(distinct 
			case 
				when situacao_cadastral=2 then CNPJ_BASICO end)--QTD DE EMPRESAS ATIVAS ATUAL
	AS QTD_ATIVAS_ATUAL
																	--DAS QTD DE EMPRESAS ATUALMENTE RETIRA-SE Q QTD DE EMPRESAS Q FICARAM ATIVAS NOS ULTIMOS DOIS ANOS
	
	,count(distinct 
			case 
				when situacao_cadastral=2 AND data_situacao_cadastral > dateadd(year,-2,getdate()) 
				then CNPJ_BASICO end) -- QTD DE EMPRESAS QUE ATIVAS NOS ULTIMOS DOIS ANOS
	AS QTD_ATIVA_DOIS_ANOS

	,count(distinct 
			case 
				when situacao_cadastral<>2 AND data_situacao_cadastral >  dateadd(year,-2,getdate()) 
				then CNPJ_BASICO end) -- QTD DE EMPRESAS COM STATUS DIFERENTE DE ATIVO NOS ULTIMOS DOIS ANOS
	AS QTD_OUTROS_ULTIMOS_ANOS

  FROM dbo.estabelecimentos_V2 
  GROUP BY CNAE_PRINCIPAL 

 
 --problema na logica: nao se sabe quem dos "outros" de fato eram ativos e depois ficou outro
 --poderia ter passado de outros para outros 


 --estudo por taxa
 SELECT  CNAE_PRINCIPAL, b.*
 , (100.0*QTD_ATIVA_ULTIMOS_ANOS) --somente positivos pois verifica de fato apenas os ativos q vieram 
 /(1.0*(QTD_ATIVA_ATUAL - QTD_ATIVA_ULTIMOS_ANOS + QTD_OUTROS_ULTIMOS_ANOS  )) AS taxa
 FROM DBO.CNAE_CALCULO a
 inner join empresas.[dbo].[cnae] b on a.CNAE_PRINCIPAL=b.cnae
  where CNAE_PRINCIPAL<>'1822900'--='5611202'--
 order by 4 desc


 --estudo por qtd
 SELECT  CNAE_PRINCIPAL, b.*
 , QTD_ATIVA_ULTIMOS_ANOS 
  FROM DBO.CNAE_CALCULO a
 inner join empresas.[dbo].[cnae] b on a.CNAE_PRINCIPAL=b.cnae
  where CNAE_PRINCIPAL<>'1822900'
 order by 4 desc


  SELECT *
 FROM DBO.CNAE_CALCULO where QTD_ATIVA_ATUAL - QTD_ATIVA_ULTIMOS_ANOS + QTD_OUTROS_ULTIMOS_ANOS =0
 order by 2 desc

 

 select 
 CNAE_PRINCIPAL
 	,(100.0*count(distinct 
			case 
				when situacao_cadastral=2 AND data_situacao_cadastral >  dateadd(year,-2,getdate()) 
				then CNPJ_BASICO end)) -- QTD DE EMPRESAS COM STATUS DIFERENTE DE ATIVO NOS ULTIMOS DOIS ANOS
	/

		(1.0*count(distinct case when situacao_cadastral=2 then CNPJ_BASICO end))
		as taxa_crescimento 
  FROM dbo.estabelecimentos_V2 
  GROUP BY CNAE_PRINCIPAL 
  order by 2 desc

 


select 
year(data_situacao_cadastral) as ano
,count(1) total
,sum(case when  SITUACAO_CADASTRAL=2 then 1 else 0 end) as qtd_ativos
,sum(case when  SITUACAO_CADASTRAL=8 then 1 else 0 end) as qtd_baixados
,sum(case when cnae_principal='4763601' 
	and SITUACAO_CADASTRAL=2 then 1 else 0 end) as qtd_ativos_brinquedos
,sum(case when cnae_principal='4763601' 
	and SITUACAO_CADASTRAL=8 then 1 else 0 end) as qtd_baixados_brinquedos
from estabelecimentos_v2 where 
data_situacao_cadastral>='2012-01-01'
group by year(data_situacao_cadastral)
order by 1
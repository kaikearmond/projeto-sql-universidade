CREATE TABLE dados_aih_QTD (
   ano varchar(4) not null,
   mes smallint not null,
   Municipio_Codigo varchar(50) NOT NULL,
   Nome_Municipio varchar(50) not null,
   "QTD_Acoes_de_promocao_e_prevencao_em_saude" bigint NOT NULL,
   "QTD_Procedimentos_com_finalidade_diagnostica" bigint NOT NULL,
   "QTD_Procedimentos_clinicos" bigint NOT NULL,
   "QTD_Procedimentos_cirurgicos" bigint NOT NULL,
   "QTD_Transplantes_de_orgaos,_tecidos_e_celulas" bigint NOT NULL,
   "QTD_Medicamentos" bigint NOT NULL,
   "QTD_Orteses,_proteses_e_materiais_especiais" bigint NOT NULL,
   "QTD_Acoes_complementares_da_atencao_a_saude" bigint NOT NULL,
   total bigint not null,

   constraint pk_qtd PRIMARY KEY (ano, mes, Municipio_Codigo),
   constraint uk_municipio unique (Municipio_Codigo)
);

CREATE TABLE dados_aih_vlr(
   ano varchar(4) not NULL,
   mes varchar (4) not null,
   Municipio_Codigo varchar(50) not NULL,
   Nome_Municipio varchar(50) not null,
   VLR_Procedimentos_com_finalidade_diagnostica numeric(20,3) not NULL,
   VLR_Procedimentos_clinicos numeric(20,3) not NULL,
   VLR_Procedimentos_cirurgicos numeric(20,3) not NULL,
   VLR_Transplantes_de_orgaos_tecidos_e_celulas numeric(20,3) not NULL,
   VLR_Medicamentos numeric(20,3) not NULL,
   VLR_Orteses_proteses_e_materiais_especiais numeric(20,3) not NULL,
   VLR_Acoes_complementares_da_atencao_a_saude numeric(20,3) not NULL,
   total numeric(30,3) not null,

   constraint pk_vlr PRIMARY KEY (ano, mes, Municipio_Codigo),
   constraint fk_qtd foreign key (Municipio_Codigo) references dados_aih_QTD(Municipio_Codigo)
);

constraint pk_vl primary key (ano, mes, Codigo_Municipio),

constraint fk_vl foreign key (Codigo_Municipio) references hospital(Codigo_Municipio)
);

	
create view tabelinhas (ano, mes, municipio_codigo, nome_municipio, vlr_procedimentos_com_finalidade_diagnostica, vlr_procedimentos_clinicos, vlr_procedimentos_cirurgicos, vlr_transplantes_de_orgaos_tecidos_e_celulas, vlr_medicamentos, vlr_orteses_proteses_e_materiais_especiais, vlr_acoes_complementares_da_atencao_a_saude, total)
as 
select dvl.ano, dvl.mes, dvl.municipio_codigo, dvl.nome_municipio, dvl.VLR_Procedimentos_com_finalidade_diagnostica, dvl.VLR_Procedimentos_clinicos, dvl.VLR_Procedimentos_cirurgicos, dvl.VLR_Transplantes_de_orgaos_tecidos_e_celulas, dvl.VLR_Medicamentos, dvl.VLR_Orteses_proteses_e_materiais_especiais, dvl.VLR_Acoes_complementares_da_atencao_a_saude, dvl.total from hospital h inner join dados_aih_vlr dvl on h.municipio_codigo = dvl.municipio_codigo;

		

	

		
-- 2 a) 01
select sum("QTD_Acoes_de_promocao_e_prevencao_em_saude")
from (
	select "QTD_Acoes_de_promocao_e_prevencao_em_saude"
	from dados_aih_qtd
	order by "QTD_Acoes_de_promocao_e_prevencao_em_saude"
	limit (select count(*) - 1 from dados_aih_qtd))
	as subconta
	
	-- 02
	
	select sum("QTD_Procedimentos_com_finalidade_diagnostica")
from (
	select "QTD_Procedimentos_com_finalidade_diagnostica"
	from dados_aih_qtd
	order by "QTD_Procedimentos_com_finalidade_diagnostica"
	limit (select count(*) - 1 from dados_aih_qtd))
	as subconta2
	
	-- 03
	
	select sum("QTD_Procedimentos_clinicos")
from (
	select "QTD_Procedimentos_clinicos"
	from dados_aih_qtd
	order by "QTD_Procedimentos_clinicos"
	limit (select count(*) - 1 from dados_aih_qtd))
	as subconta3
	
	-- 04
	
	select sum("QTD_Procedimentos_cirurgicos")
from (
	select "QTD_Procedimentos_cirurgicos"
	from dados_aih_qtd
	order by "QTD_Procedimentos_cirurgicos"
	limit (select count(*) - 1 from dados_aih_qtd))
	as subconta4
	
	-- 05 
	
	select sum("QTD_Transplantes_de_orgaos,_tecidos_e_celulas")
from (
	select "QTD_Transplantes_de_orgaos,_tecidos_e_celulas"
	from dados_aih_qtd
	order by "QTD_Transplantes_de_orgaos,_tecidos_e_celulas"
	limit (select count(*) - 1 from dados_aih_qtd))
	as subconta5
	
	-- 06
	
	select sum("QTD_Transplantes_de_orgaos,_tecidos_e_celulas")
from (
	select "QTD_Transplantes_de_orgaos,_tecidos_e_celulas"
	from dados_aih_qtd
	order by "QTD_Transplantes_de_orgaos,_tecidos_e_celulas"
	limit (select count(*) - 1 from dados_aih_qtd))
	as subconta5
	
	
	-- 07
	select sum("QTD_Medicamentos")
from (
	select "QTD_Medicamentos"
	from dados_aih_qtd
	order by "QTD_Medicamentos"
	limit (select count(*) - 1 from dados_aih_qtd))
	as subconta6
	
	-- 08
	
	select sum("QTD_Orteses,_proteses_e_materiais_especiais")
from (
	select "QTD_Orteses,_proteses_e_materiais_especiais"
	from dados_aih_qtd
	order by "QTD_Orteses,_proteses_e_materiais_especiais"
	limit (select count(*) - 1 from dados_aih_qtd))
	as subconta7
	
	-- 09
	
	select sum("QTD_Acoes_complementares_da_atencao_a_saude")
from (
	select "QTD_Acoes_complementares_da_atencao_a_saude"
	from dados_aih_qtd
	order by "QTD_Acoes_complementares_da_atencao_a_saude"
	limit (select count(*) - 1 from dados_aih_qtd))
	as subconta8
	
	-- 2 b)
	
	-- 01
	
	select sum(VLR_Procedimentos_com_finalidade_diagnostica)
from (
	select VLR_Procedimentos_com_finalidade_diagnostica
	from dados_aih_vlr
	order by VLR_Procedimentos_com_finalidade_diagnostica
	limit (select count(*) - 1 from dados_aih_vlr))
	as vlconta1
	
	-- 02
	select sum(VLR_Procedimentos_clinicos)
from (
	select VLR_Procedimentos_clinicos
	from dados_aih_vlr
	order by VLR_Procedimentos_clinicos
	limit (select count(*) - 1 from dados_aih_vlr))
	as vlconta2
	
	-- 03
	select sum(VLR_Procedimentos_cirurgicos)
from (
	select VLR_Procedimentos_cirurgicos
	from dados_aih_vlr
	order by VLR_Procedimentos_cirurgicos
	limit (select count(*) - 1 from dados_aih_vlr))
	as vlconta3
	
	-- 04
	select sum(VLR_Transplantes_de_orgaos_tecidos_e_celulas)
from (
	select VLR_Transplantes_de_orgaos_tecidos_e_celulas
	from dados_aih_vlr
	order by VLR_Transplantes_de_orgaos_tecidos_e_celulas
	limit (select count(*) - 1 from dados_aih_vlr))
	as vlconta4
	-- 05
	 	
	select sum(VLR_Medicamentos)
from (
	select VLR_Medicamentos
	from dados_aih_vlr
	order by VLR_Medicamentos
	limit (select count(*) - 1 from dados_aih_vlr))
	as vlconta5
	
	-- 06
	
	select sum(QTD_Orteses,_proteses_e_materiais_especiais)
from (
	select QTD_Orteses,_proteses_e_materiais_especiais
	from dados_aih_vlr
	order by QTD_Orteses,_proteses_e_materiais_especiais
	limit (select count(*) - 1 from dados_aih_vlr))
	as vlconta6
	
	-- 07
	
	select sum(VLR_Acoes_complementares_da_atencao_a_saude)
from (
	select VLR_Acoes_complementares_da_atencao_a_saude
	from dados_aih_vlr
	order by VLR_Acoes_complementares_da_atencao_a_saude
	limit (select count(*) - 1 from dados_aih_vlr))
	as vlconta7
CREATE TABLE T_TESTE_SEQ(
ID          INTEGER          NOT NULL,
DESCRICAO   VARCHAR2(100)    NOT NULL
);

ALTER TABLE T_TESTE_SEQ ADD CONSTRAINT PK_TESTE_SEQ PRIMARY KEY (id);

INSERT INTO t_teste_seq (id, descricao) VALUES (1, 'Teste 1');
INSERT INTO t_teste_seq (id, descricao) VALUES (2, 'Teste 2');


-- por defaul começa em 1, não tem máximo e incrementa de 1 em 1
create sequence minha_sequencia;
select minha_sequencia.nextval from dual;

insert into t_teste_seq values(minha_sequencia.nextval, 'Teste Seq');

select * from t_teste_seq order by 1;

create sequence SQ_2 start with 10 increment by 5;
create sequence sq_3 start with 10 increment by 5 maxvalue 200;

insert into t_teste_seq values(SQ_2.nextval, 'Teste Seq');

-- 1 Crie uma sequencia chamada "order_id_seq" que comece em 100 e incremente em 1 a cada geração
create sequence order_id_seq start with 100 increment by 1;
-- Crie uma tabela chamada "orders" com as colunas "order_id", "customer_name", e "order_data". Use a sequência 
-- "order_id_seq" para gerar valores exclusivos para a coluna "order_id"

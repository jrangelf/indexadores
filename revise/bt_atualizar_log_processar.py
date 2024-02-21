from bt_queries import *
from bt_database import *

''' Este módulo vai verificar na tabela logatualizacao o valor 
    do campo data_atualização e comparar com a data atual (mês atual).
    Caso a data desse campo seja menor (não necessariamente do mês anterior)
    o campo processar deve ser preenchido com 1 (inteiro)
'''

def atualizar_log_processar(data_atual):
    codigos = selecionar_tabelas(query7)
    codigos_datas = selecionar_codigos_datas(codigos, query8)
    resposta = update_processar_logatualizacao(codigos_datas, data_atual, query9) # UPDATE logatualizacao SET processar=1 WHERE codigo_tabela=$
    return resposta
     

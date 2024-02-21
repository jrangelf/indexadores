from bt_queries import *
from bt_database import *

''' Este módulo vai verificar em cada tabela de indexadores e em cada tabela de índices-pnep 
    a data do último registro inserido. 
    Em seguida vai inserir no campo data_atualizacao da tabela logatualizacao o valor da data 
    desse último registro em cada tabela relacionada com a data respectiva.
    Isso garante que todas as tabelas serão atualizadas apenas com o indexador do mês imediatamente 
    seguinte, evitando que haja saltos em algum mês.   
'''

def atualizar_log_datas():
    tabelas = selecionar_tabelas(query0) # seleciona todas as tabelas (index e indices)
    datas = seleciona_ultima_data_das_tabelas(tabelas,query3) # seleciona a data do último registro
    codigos = selecionar_codigos_tabelas(datas,query4) # seleciona os códigos das tabelas
    resposta = update_datas_logatualizacao(codigos, query6) # UPDATE logatualizacao SET data_atualizacao='$1' WHERE codigo_tabela=$2
    return resposta

    
    
    
    
    

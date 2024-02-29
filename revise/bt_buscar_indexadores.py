from bt_queries import *
from bt_database import *
from bt_consulta_bcb_indexadores import *
from bt_data_tools import *

''' Este módulo vai buscar todos indexadores do Banco Central, exceto INPC e IPCA,
    com a data do mês subsequente ao que estiver indicado na tabela logatualizacao '''

def buscar_indexadores(*args):   
    '''os argumentos desta funçao sao os indexadores que nao serao removidos da busca'''

    dictregistros = {}
    indexadores_do_mes = []
   
    # seleciona todos os indices que precisam ser atualizados
    registros = selecionar_multiplos(query16)    
    for registro in registros:
        chave = registro[0]
        data = registro[1].strftime('%d/%m/%Y')
        dictregistros[chave]=data
    
    if args:
        ...
        
    print (f"dictregistros: {dictregistros}")

    # seleciona todos os indices e seus respectivos codigos bcb    
    indexes = buscar_codigo_bcb_indexadores()  

    # Retirar as chaves do dicionário 'indexes' que não estão presentes no dicionário 'dictregistros'
    indexes = {chave: valor for chave, valor in indexes.items() if chave in dictregistros}

    while indexes:

        print(f"indexes: {indexes}")
            
        for indexador, codigo in indexes.copy().items():
            data_inicial = dictregistros[indexador]
            
            #print(f"data_inicial: {data_inicial}")
            #print(f"data_inicial_incrementada: {incrementa_mes_str(data_inicial)}")
            
            if indexador == 'TR':
                data_final = incrementa_mes_str(data_inicial)
            else:
                data_inicial = incrementa_mes_str(data_inicial)
                data_final = data_inicial
            
            resposta = consultar_bc_periodo(codigo, data_inicial, data_final)
            if resposta:
                if indexador == 'TR':
                    for i in resposta:
                        if i['data']==data_inicial and i['datafim'] == data_final:
                            valor = i['valor']
                            data = i['datafim']
                            del indexes[indexador]
                    
                else:
                    valor = resposta[0]['valor']
                    data = resposta[0]['data']
                    del indexes[indexador]
                    
                indexadores_do_mes.append([indexador, data, valor])

    return indexadores_do_mes



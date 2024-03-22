from bt_queries import *
from bt_database import *
from bt_consulta_bcb_indexadores import *
from bt_data_tools import *

''' Este módulo vai atualizar os indexadores quinzenais INPC e IPCA
    com a data do mês subsequente ao que estiver indicado na tabela
    logatualizacao '''

'''
COD_INPC = 100
COD_IPCA = 102

def atualizar_indexador_quinzenal():
    codigos = selecionar_multiplos(query10)

    for codigo in codigos:
        data_inicial = incrementa_mes(codigo[1])
        data_final = incrementa_mes(data_inicial)
        dt_inicial_str = converter_data_para_str(data_inicial)
        dt_final_str = converter_data_para_str(data_final)

        if codigo[0] == COD_IPCA or codigo[0] == COD_INPC:
            codigo_index = INPC if codigo[0] == COD_INPC else IPCA
            indexador = consulta_bc_periodo(codigo_index,dt_inicial_str,dt_final_str)
            dt_formatada=converter_formato_ano_mes_dia(indexador[0]['data'])
            
            nome_tabela = obter_nome_tabela(codigo[0], query13)
            pos=inserir_indice_bcb(dt_formatada, indexador[0]['valor'], query12, nome_tabela)
            
            if pos:
                resetar_flag_processar(codigo[0],dt_formatada,query14)
'''
        
def buscar_indexadores_quinzenais():   
    
    dictregistros = {}
    indexadores_quinzenais = []
    data_atual = datetime.now()
    data_atual_formatada = data_atual.strftime("%d/%m/%Y")
    
    # seleciona todos os indices com suas respectivas ultimas data de atualizacao
    registros = selecionar_multiplos(query16)    
    for registro in registros:
        chave = registro[0]
        data = registro[1].strftime('%d/%m/%Y')
        dictregistros[chave]=data
    
    
    print (f"dictregistros: {dictregistros}")

    # seleciona todos os indices e seus respectivos codigos bcb    
    indexes = buscar_codigo_bcb_indexadores()  
    
    chaves_para_excluir = [chave for chave in indexes if chave not in ['IPCA', 'INPC']]
    for chave in chaves_para_excluir:
        del indexes[chave]

    while indexes:
        print(f"indexes: {indexes}")           
        for indexador, codigo in indexes.copy().items():
            if indexador in dictregistros:
                data_inicial = dictregistros[indexador]
            else:
                data_inicial = data_atual_formatada
            
            data_inicial = incrementa_mes_str(data_inicial)
            data_final = data_inicial
            
            resposta = consultar_bc_periodo(codigo, data_inicial, data_final)
            if resposta:
                valor = resposta[0]['valor']
                data = resposta[0]['data']
                del indexes[indexador]                   
                indexadores_quinzenais.append([indexador, data, valor])

    return indexadores_quinzenais


        
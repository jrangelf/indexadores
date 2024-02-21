from bt_queries import *
from bt_database import *
from bt_indexadores import *
from bt_data_tools import *

''' Este módulo vai atualizar todos indexadores do Banco Central, exceto INPC e IPCA,
    com a data do mês subsequente ao que estiver indicado na tabela logatualizacao '''

COD_SELIC = 106
COD_SELICCOPOM = 108
COD_TR = 104
COD_IPCA15 = 7478

def obter_codigo_indexador_bcb(codigo):
    if codigo == COD_TR:
        return TR
    elif codigo == COD_SELIC:
        return SELIC
    elif codigo == COD_SELICCOPOM:
        return SELICCOPOM
    elif codigo == COD_IPCA15:
        return IPCA15
    return None

def atualizar_indexador_mensal():
    
    registros = selecionar_multiplos(query10)    

    for registro in registros:

        data_inicial = incrementa_mes(registro[1])
        data_final = incrementa_mes(data_inicial)
        dt_inicial_str = converter_data_para_str(data_inicial)
        dt_final_str = converter_data_para_str(data_final)

        codigo_index = obter_codigo_indexador_bcb(registro[0])
        
        if codigo_index:
            if codigo_index == SELIC:
                index_data, index_valor = consulta_selic_receita()                
                dt_formatada = converter_data_para_str_slim(index_data)
                
            elif codigo_index == TR:
                tr = consulta_bc_periodo(codigo_index,dt_inicial_str, dt_final_str)
                for i in tr:
                    if i['data']==dt_inicial_str and i['datafim'] == dt_final_str:
                        index_valor = i['valor']
                        index_data = i['data']                        
                        dt_formatada=converter_formato_ano_mes_dia(index_data)                      
            else:
                indexador = consulta_bc_periodo(codigo_index,dt_inicial_str,dt_final_str)
                index_valor = indexador[0]['valor']
                index_data = indexador[0]['data']
                dt_formatada=converter_formato_ano_mes_dia(index_data)
                                        
            nome_tabela = obter_nome_tabela(registro[0], query13)
                        
            pos=inserir_indice_bcb(dt_formatada, index_valor, query12, nome_tabela)

            if pos:            
                print("------------------------------------------------------------")
                print(nome_tabela, "valor: ", index_valor, "data: ", dt_formatada)
                resetar_flag_processar(registro[0],dt_formatada,query14)
                print("zerar o campo processar da tabela logatualizacao ")
                print("------------------------------------------------------------")
            

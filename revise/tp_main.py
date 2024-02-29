
from bt_queries import *
from bt_database import *
from bt_atualizar_log_datas import *
from bt_atualizar_log_processar import *
from datetime import datetime
from bt_atualizar_indexador_quinzenal import *
from bt_buscar_indexadores_mensais import *
from bt_consulta_bcb_indexadores import *
from bt_data_tools import incrementa_mes

data_atual = datetime.now()
data_atual_mes_subsequente = incrementa_mes(data_atual)

#data_formatada =  data_atual.strftime("%Y-%m-%d %H:%M:%S")
#data_subsequente_formatada = data_atual_mes_subsequente.strftime("%Y-%m-%d %H:%M:%S")

data_formatada =  data_atual.strftime("%d/%m/%Y")
data_subsequente_formatada = data_atual_mes_subsequente.strftime("%d/%m/%Y")

print(f"data_atual: {data_formatada}")
print(f"data_atual_mes_subsequente: {data_subsequente_formatada}")

print("============================================================")

data_inicial = "01/01/2024"
data_final = "01/02/2024"



indexadores_do_mes =[]

#indexes2 = buscar_codigo_bcb_indexadores()
#print(f"indexes2: \n{indexes2}")
#indexes = {'selic':4390,'tr':226, 'ipca':433, 'ipca15':7478, 'inpc':188, 'selic_copom':432}

indexes = buscar_codigo_bcb_indexadores()

while indexes:

    print(indexes)
    
    for indexador, codigo in indexes.copy().items():
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
        

print("Indexadores do mês:")
for item in indexadores_do_mes:
    print(f"{item[0]}:  {item[1]} valor: {item[2]}")

#consulta_selic_receita()


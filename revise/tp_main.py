# from bt_constantes import *
# from bt_conexao import *
from tp_obter_indexadores import *

from bt_queries import *
from bt_database import *
from bt_atualizar_log_datas import *
from bt_atualizar_log_processar import *
from datetime import datetime
from bt_atualizar_indexador_quinzenal import *
from bt_atualizar_indexador_mensal import *


data_atual = datetime.now()
data_formatada =  data_atual.strftime("%Y-%m-%d %H:%M:%S")

#data_atual = datetime.now().date()
print(f"(main) data atual: {data_formatada}")
print(type(data_formatada))

#x = atualizar_log_datas()
#resposta = atualizar_log_processar(data_atual)

#atualizar_indexador_mensal()

#obter_indexadores('01/07/2023','01/08/2023')
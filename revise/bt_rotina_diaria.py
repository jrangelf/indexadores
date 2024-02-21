import os
from datetime import datetime
from bt_atualizar_log_datas import *
from bt_atualizar_log_processar import *
from bt_atualizar_indexador_quinzenal import *
from bt_atualizar_indexador_mensal import *

''' Este módulo é executado todo dia às 8h00 '''

# Ler a data do arquivo que contém a data corrente
def ler_data_arquivo(nome_arquivo):
    if os.path.exists(nome_arquivo):
        with open(nome_arquivo, 'r') as arquivo:
            data_texto = arquivo.read().strip()
            return datetime.strptime(data_texto, '%Y-%m-%d').date()
    return None

# Gravar a nova data no arquivo
def gravar_data_arquivo(nome_arquivo, data):
    with open(nome_arquivo, 'w') as arquivo:
        arquivo.write(data.strftime('%Y-%m-%d'))

# Verificar se é dia 15
def verificar_quinzena(data1):
    return data1.day == 15    

# Verificar se as datas estão no mesmo mês
def mesmo_mes(data1, data2):
    return data1.year == data2.year and data1.month == data2.month

# Data atual
data_atual = datetime.now().date()

# Nome do arquivo
nome_arquivo = '/revise/bt_data.txt'

# Se o arquivo não existir, cria com a data atual
if not os.path.exists(nome_arquivo):
    gravar_data_arquivo(nome_arquivo, data_atual)

# Ler a data do arquivo
data_arquivo = ler_data_arquivo(nome_arquivo)

if data_arquivo is None:
    print("arquivo não encontrado.")
else:
    print("data atual:     ", data_atual)
    print("data do arquivo:", data_arquivo)

    if mesmo_mes(data_atual, data_arquivo):
        print("não houve mudança de mês")
        print("------------------------")
        if verificar_quinzena(data_atual):
            print("verificar atualização quinzenal - INPC/IPCA")
            atualizar_indexador_quinzenal()
    else:
        print("houve mudança de mês")
        print("--------------------")
        response = 1

        atualizar_log_datas() # atualiza todo inicio de mês.
        atualizar_log_processar(data_atual) # atualiza todo inicio mês
        atualizar_indexador_mensal()
        # atualizar_tabelas_pnep()
        gravar_data_arquivo(nome_arquivo, data_atual)
        

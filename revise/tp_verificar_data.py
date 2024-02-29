import os
from datetime import datetime
from bt_consulta_bcb_indexadores import *


# Ler a data do arquivo
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

# Verificar se as datas estão no mesmo mês
def mesmo_mes(data1, data2):
    return data1.year == data2.year and data1.month == data2.month

# Data atual
data_atual = datetime.now().date()

# Nome do arquivo
nome_arquivo = '/home/rangel/api-dev/revise/data.txt'

# Se o arquivo não existir, cria com a data atual
if not os.path.exists(nome_arquivo):
    gravar_data_arquivo(nome_arquivo, data_atual)

# Ler a data do arquivo
data_arquivo = ler_data_arquivo(nome_arquivo)

if data_arquivo is None:
    print("Arquivo não encontrado.")
else:
    print("Data atual:", data_atual)
    print("Data do arquivo:", data_arquivo)

    if mesmo_mes(data_atual, data_arquivo):
        print("Mesmo mês")
    else:
        print("Meses diferentes")
        gravar_data_arquivo(nome_arquivo, data_atual)
        consulta_selic_receita()
        #bt_rotina_mensal()

print(datetime.now())
    # print("=================================")

    # data_inicial = "01/05/2023"
    # data_final = "01/06/2023"

    # selic_data, selic_valor = consulta_selic_receita()
    # print(f"\nSelic (Receita Federal): {selic_data} = {selic_valor}\n\n")

    # selic = consulta_bc_periodo(SELIC,data_inicial,data_final)

    # print(f"(4390) SELIC: {selic[0]['data']} = {selic[0]['valor']}\n")
    # print (selic)

    # ipca = consulta_bc_periodo(IPCA,data_inicial,data_final)

    # print(f"\n(433) IPCA: {ipca[0]['data']} = {ipca[0]['valor']}\n") 
    # print(ipca)

    # inpc = consulta_bc_periodo(INPC,data_inicial,data_final)

    # print(f"\n(188) INPC: {inpc[0]['data']} = {inpc[0]['valor']}\n")
    # print(inpc)

    # selic_copom = consulta_bc_periodo(SELICCOPOM,data_inicial,data_final)

    # print(f"\n(432) SELIC Copom: {selic_copom[0]['data']} = {selic_copom[0]['valor']}\n")
    # print(selic_copom)

    # tr = consulta_bc_periodo(TR,data_inicial, data_final)
    # for i in tr:
    #     if i['data']==data_inicial and i['datafim'] == data_final:
    #         valor = i['valor']
    #         data = i['datafim']
    
    # print(f"\n(226) TR: {data} = {valor}\n")


    # print (tr)
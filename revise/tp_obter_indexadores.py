import requests
import json
#import datetime
from datetime import datetime
from bt_indexadores import *
from bt_constantes import SELIC,SELICCOPOM,INPC,IPCA,TR,IPCA15


def obter_indexadores(data_inicial, data_final):
    
    print(datetime.now())  

    data_inicial = "01/08/2023"
    data_final = "01/09/2023"

    selic_data, selic_valor = consulta_selic_receita()
    selic = consulta_bc_periodo(SELIC,data_inicial,data_final)
    ipca = consulta_bc_periodo(IPCA,data_inicial,data_final)
    ipca15 = consulta_bc_periodo(IPCA15,data_inicial,data_final)
    inpc = consulta_bc_periodo(INPC,data_inicial,data_final)
    selic_copom = consulta_bc_periodo(SELICCOPOM,data_inicial,data_final)
    tr = consulta_bc_periodo(TR,data_inicial, data_final)
    for i in tr:
        if i['data']==data_inicial and i['datafim'] == data_final:
            tr_valor = i['valor']
            tr_data = i['datafim']
    
    print("------------------------------------------------------------")
    print(f"(226) TR: {tr_data} = {tr_valor}")    
    print(f"(4390) SELIC: {selic[0]['data']} = {selic[0]['valor']}")
    print(f"Receita(SELIC): {selic_data} = {selic_valor}")
    print(f"(433) IPCA: {ipca[0]['data']} = {ipca[0]['valor']}")
    print(f"(7473) IPCA-15: {ipca15[0]['data']} = {ipca15[0]['valor']}") 
    print(f"(188) INPC: {inpc[0]['data']} = {inpc[0]['valor']}")
    print(f"(432) SELIC Copom: {selic_copom[0]['data']} = {selic_copom[0]['valor']}")


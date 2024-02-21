from datetime import datetime, timedelta
from bt_conf_debug import *

def converter_formato_ano_mes_dia(data_str):
    ''' converte a string 01/07/2023 em 2023-07-01 '''
    partes = data_str.split("/")
    nova_data = f"{partes[2]}-{partes[1]}-{partes[0]}"
    return nova_data

def converter_data_para_str(data_obj):
    ''' converte a data 2023-07-01 00:00:00+0000 em 01/07/2023 '''    
    data_formatada = data_obj.strftime("%d/%m/%Y")
    return data_formatada

def converter_data_para_str_slim(data_obj):
    data_formatada = data_obj.strftime("%Y-%m-%d")
    return data_formatada

def converter_string_para_datetime(data_str):
    ''' converte a data 01/07/2023 para 2023-07-01 00:00:00+0000 '''
    data_obj = datetime.strptime(data_str, "%d/%m/%Y")
    return data_obj

def incrementa_mes(data):
    ''' converte 2023-07-01 00:00:00+0000 em 2023-08-01 00:00:00+0000'''
    logging.info(f'data: {data}')
    if data is not None:        
        ano = data.year + (data.month + 1) // 12
        logging.info(f'ano: {ano}')
        mes = (data.month + 1) % 12
        logging.info(f'mes: {mes}')
        dia = min(data.day, (data.replace(month=mes, year=ano) - timedelta(days=1)).day)
        logging.info(f'dia: {dia}')
        data_incrementada = data.replace(year=ano, month=mes, day=dia)
        logging.info(f'data_incrementada: {data_incrementada}')
        return data_incrementada
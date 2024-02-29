import os
from datetime import datetime, timedelta


def dia_de_hoje():
    return datetime.now().date()

def existe_arquivo(nome_arquivo):
    return os.path.exists(nome_arquivo)

def ler_data_arquivo(nome_arquivo):
    if os.path.exists(nome_arquivo):
        with open(nome_arquivo, 'r') as arquivo:
            data_texto = arquivo.read().strip()
            return datetime.strptime(data_texto, '%Y-%m-%d').date()
    return None

def gravar_data_arquivo(nome_arquivo, data):
    with open(nome_arquivo, 'w') as arquivo:
        arquivo.write(data.strftime('%Y-%m-%d'))

def verificar_quinzena(data1):
    return data1.day == 15    

def mesmo_mes(data1, data2):
    return data1.year == data2.year and data1.month == data2.month

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
    
    if data is not None:        
        ano = data.year + (data.month + 1) // 12
        mes = (data.month + 1) % 12
        if mes == 0:
            mes = 12       
        dia = min(data.day, (data.replace(month=mes, year=ano) - timedelta(days=1)).day)        
        data_incrementada = data.replace(year=ano, month=mes, day=dia)        
        return data_incrementada
    
def incrementa_mes_str(data_str):
    # Converter a string de data para um objeto datetime
    data = datetime.strptime(data_str, '%d/%m/%Y')

    # Incrementar o mês
    data_proximo_mes = data.replace(day=1) + timedelta(days=32)
    data_proximo_mes_formatado = data_proximo_mes.strftime('01/%m/%Y')

    return data_proximo_mes_formatado
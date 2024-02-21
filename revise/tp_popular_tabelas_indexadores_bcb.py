import requests
import json
from datetime import datetime
from bt_conexao import *

''' Este módulo serve apenas para popular as tabelas dos
    indexadores com os valores históricos. É considerada
    a iniciação dos dados nas tabelas. Não será utilizado
    após as tabelas serem populadas'''

def filtra_lista_indexadores(a):
    ''' Separa do arquivo json retornado da API do Banco Central
        apenas os indexadores que estão no intervalo do dia 1 do
        mês ao dia 1 do mês seguinte. Além disso retira a tag datafim
        para que fiquem apenas a data e o valor'''
    b = []
    for i in range(len(a) - 1):        
        current_date = datetime.strptime(a[i]['data'], '%d/%m/%Y')
        next_date = datetime.strptime(a[i]['datafim'], '%d/%m/%Y')
        
        if current_date.day == 1 and next_date.day == 1:
            new_record = {
                'data': current_date.strftime('%d/%m/%Y'),                
                'valor': a[i]['valor']
            }
            b.append(new_record)
    return b


def formatar_data(date_str):
    return datetime.strptime(date_str, '%d/%m/%Y').strftime('%Y-%m-%d')


def consulta_bc(codigo_bcb):
    '''consulta pelo código do indexador e retorna data e valor desde início da inserção'''
    url = f'http://api.bcb.gov.br/dados/serie/bcdata.sgs.{codigo_bcb}/dados?formato=json'
    response = requests.get(url)
    
    if response.status_code == 200:
        data = json.loads(response.text)
        return data 
    else:
        print(f"Erro ao acessar a API. Código de status: {response.status_code}")
        return None

#tr = consulta_bc(226) # precisa de filtro
#inpc = consulta_bc(188) # não precisa de filtro
#ipca15 = consulta_bc(7478) # sem filtro
#selic = consulta_bc(4390) #sem filtro
#selic_copom = consulta_bc(432) #sem filtro
#ipca = consulta_bc(433) #sem filtro

lista = [(4390,'selic'),(432,'seliccopom'),(226,'tr'),(188,'inpc'),(7478,'ipca15'),(433,'ipca')]

# Estabelecer conexão com o banco de dados
conn = conectar_sql()

# Criar um cursor para executar comandos SQL
cursor = conn.cursor()


# iterar a lista de códigos e tabelas
for elemento in lista:
    tabela = elemento[1]
    codigo = elemento[0]

    if codigo == 226:
        indexador = consulta_bc(codigo)
        indexador = filtra_lista_indexadores(indexador)
    else:
        indexador = consulta_bc(codigo)

    for item in indexador:
        data = formatar_data(item['data'])
        valor = float(item['valor'])
        contexto = f"INSERT INTO {tabela} (data, valor) VALUES (%s, %s)"
        cursor.execute(contexto, (data, valor))
        conn.commit()
    
    print(f"Dados inseridos na tabela {tabela} com sucesso\n")    


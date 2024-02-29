from bt_queries import *
from bt_constantes import *
from bt_conexao import *
import datetime
from bt_conf_debug import *


def obter_nome_tabela(codigo,query):
    with conectar_sql() as conn:
        if conn is not None:
            cursor = conn.cursor()
            query_substituida = query.replace('$1', str(codigo))            
            cursor.execute(query_substituida)
            row = cursor.fetchone()
            return row[0]
    return None


def obter_codigo_tabela(nome,query):
    with conectar_sql() as conn:
        if conn is not None:
            cursor = conn.cursor()
            query_substituida = query.replace('$1', nome)            
            cursor.execute(query_substituida)
            row = cursor.fetchone()
            return row[0]
    return None


def buscar_codigo_bcb_indexadores():
    dicionario = {}
    conn = conectar_sql()
    if conn is not None:
        cursor = conn.cursor()
        cursor.execute(query15)
        rows = cursor.fetchall()
        for row in rows:
            dicionario[row[0]]=row[1]            
        return dicionario
    return None

def selecionar_multiplos(query):
    lista = []
    conn = conectar_sql()
    if conn is not None:
        cursor = conn.cursor()
        cursor.execute(query)
        rows = cursor.fetchall()
        for row in rows:
            lista.append(row)
        return lista
    return None

def selecionar_tabelas(query):
    with conectar_sql() as conn:
        if conn:
            cursor = conn.cursor()
            cursor.execute(query)
            rows = cursor.fetchall()
            return [row[0] for row in rows]
    return None

def selecionar_codigos_datas(lista_codigos, query):
    ''' esta função recebe uma lista com o código das tabelas e retorna uma lista de tuplas
        com o código da tabela e a última data de atualização que consta na tabela 
        logatualização '''   

    lista = []    
    conn = conectar_sql()
    if conn is not None:
        cursor = conn.cursor()
        for registro in lista_codigos:                                                
            query_substituida = query.replace('$', str(registro))            
            cursor.execute(query_substituida)
            row = cursor.fetchone()            
            if row:                
                lista.append((registro, row[0]))
        cursor.close()
        conn.close()
        return lista
    return None

def selecionar_codigos_tabelas(lista, query):
    ''' esta função recebe uma lista de tuplas (nome da tabela, data do último
        registro dessa tabela) e retorna uma lista de tuplas (código da tabela,
        nome da tabela, data do último registro) '''
    lista_codigo_nome_data = []
    conn = conectar_sql()
    if conn is not None:
        cursor = conn.cursor()
        for registro in lista:            
            query_substituida = query.replace('$', registro[0])
            cursor.execute(query_substituida)
            row = cursor.fetchone()            
            lista_codigo_nome_data.append((row[0], registro[0], registro[1]))
        cursor.close()
        conn.close()
        return lista_codigo_nome_data
    return None  
    
def seleciona_ultima_data_das_tabelas(lista_tabelas,query):
    lista = []
    conn = conectar_sql()
    if conn is not None:
        cursor = conn.cursor()
        for tabela in lista_tabelas:
            query_substituida = query.replace('$', tabela)
            cursor.execute(query_substituida)
            row = cursor.fetchone()
            lista.append((tabela, row[0]))
        cursor.close()
        conn.close()
        return lista
    return None

def update_datas_logatualizacao(lista,query):
    with conectar_sql() as conn:
        if conn is not None:
            cursor = conn.cursor()
            logging.info("===============================================================")
            logging.info("Atualização da coluna data_atualizacao na tabela logatualizacao")
            for codigo, nome, data in lista:
                data_formatada = data.strftime("%Y-%m-%d")                
                query_substituida = query.replace('$1', data_formatada).replace('$2', str(codigo))            
                cursor.execute(query_substituida)
                logging.info(f"{nome} data atualizada: {data_formatada}")
            conn.commit()
            return True
    return None

def processar_atualizacao(data_atual, data_log):
    if (data_atual.year == data_log.year):
        return data_atual.month > data_log.month
    elif (data_atual.year > data_log.year):
        return True
    return False

def update_processar_logatualizacao(lista,data_atual,query):
    with conectar_sql() as conn:
        if conn is not None:
            cursor = conn.cursor()
            print("===============================================================")
            print("Atualização da coluna processar na tabela logatualizacao")        
            for codigo, data_log in lista:
                if processar_atualizacao(data_atual, data_log):
                    query_substituida = query.replace('$', str(codigo))                
                    cursor.execute(query_substituida)
                    print(codigo," processar=1")
            conn.commit()        
            return True
    return None

def inserir_indice_bcb(data, valor, query, nome_tabela):
    '''insere em tabelas de indexador a data e o índice '''
    with conectar_sql() as conn:
        if conn is not None:
            cursor = conn.cursor()
            print("===============================================================")
            print("Novo indexador ",nome_tabela, " data: ", data, "valor: ", valor)
            query_substituida = query.replace('$1', str(nome_tabela)).replace('$2',data).replace('$3',str(valor))
            cursor.execute(query_substituida)            
            conn.commit()        
            return True
    return None

def resetar_flag_processar(codigo, data, query):
    '''zerar o flag processar na tabela logatualizacao '''
    with conectar_sql() as conn:
        if conn is not None:
            cursor = conn.cursor()
            print("===============================================================")
            print("Update colunas data e processar na tabela logatualizacao: ",codigo)
            query_substituida = query.replace('$2', str(codigo)).replace('$1', data)
            cursor.execute(query_substituida)            
            conn.commit()        
            return True
    return None

import logging

# Configuração básica do logging com FileHandler e codificação UTF-8
logging.basicConfig(
    level=logging.INFO,
    handlers=[
        logging.FileHandler(filename='agenda.log', mode='a', encoding='utf-8')
    ],
    format='%(levelname)s:%(asctime)s — %(message)s'
)
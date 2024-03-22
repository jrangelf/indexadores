import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText

def enviar_email(destinatarios, assunto, mensagem, remetente, senha):
    # Configuração do servidor SMTP do provedor de e-mail
    smtp_host = 'smtp.seuprovedor.com'
    smtp_port = 587  # Porta para conexão TLS

    # Criação do objeto MIMEMultipart
    email = MIMEMultipart()
    email['From'] = remetente
    email['To'] = ', '.join(destinatarios)
    email['Subject'] = assunto

    # Adiciona a mensagem ao corpo do e-mail
    email.attach(MIMEText(mensagem, 'plain'))

    # Inicia a conexão com o servidor SMTP
    server = smtplib.SMTP(smtp_host, smtp_port)
    server.starttls()  # Inicia a conexão TLS
    server.login(remetente, senha)  # Faz login no servidor SMTP

    # Envio do e-mail
    server.sendmail(remetente, destinatarios, email.as_string())

    # Finaliza a conexão
    server.quit()

# Exemplo de uso da função enviar_email
destinatarios = ['jose.rangel@agu.gov.br', 'nccbrasilia@gmail.com']
assunto = 'Teste de E-mail'
mensagem = 'Este é um e-mail de teste enviado via Python.'
remetente = 'jrangelf@gmail.com'  # Seu endereço de e-mail
senha = '05121998'  # Sua senha de e-mail

enviar_email(destinatarios, assunto, mensagem, remetente, senha)
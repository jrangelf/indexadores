''' seleciona todas as tabelas de indexadores e de indices pnep '''
query0 = "SELECT nome FROM descricao_tabelas \
      WHERE codigo < 200" # substituir depois por <300 

''' seleciona as tabelas de indexadores exceto inpc e ipca para atualizacao do dia 1 '''
query1 = "SELECT nome FROM descricao_tabelas \
      WHERE nome != 'ipca' \
      AND nome != 'inpc' \
      AND codigo < 200"

''' seleciona as tabelas de indexadores quinzenais ipca e inpc '''
query2 = "SELECT nome FROM descricao_tabelas \
      WHERE nome = 'ipca' \
      OR nome = 'inpc'"
      
''' seleciona a coluna data do último registro da tabela '''
query3 = "SELECT data FROM $ ORDER BY id DESC LIMIT 1"

''' seleciona os codigos das tabelas pelo nome '''
query4 = "SELECT codigo FROM descricao_tabelas WHERE nome='$'"

''' seleciona o nome da tabela pelo codigo '''
query5 = "SELECT nome FROM descricao_tabelas WHERE codigo=$"

''' faz um update das datas de atualização da tabela logatualizacao'''
query6 = "UPDATE logatualizacao SET data_atualizacao='$1' WHERE codigo_tabela=$2"
	
''' seleciona o nome da tabela pelo codigo '''
query7 = "SELECT codigo FROM descricao_tabelas"

''' seleciona a data de atualização pelo código na tabela logatualizacao '''
query8 = "SELECT data_atualizacao FROM logatualizacao WHERE codigo_tabela=$"

''' faz um update da coluna processar da tabela logatualizacao'''
query9 = "UPDATE logatualizacao SET processar=1 WHERE codigo_tabela=$"

''' seleciona o codigo da tabela com a coluna processar igual a 1 '''
query10 = "SELECT codigo_tabela, data_atualizacao FROM logatualizacao WHERE processar=1"

''' faz um update da coluna processar para o valor igual a 0 '''
query11 = "UPDATE logatualizacao SET processar=0 WHERE codigo_tabela=$"

''' faz um insert de data e valor na tabela de indexador/índice '''
query12 = "INSERT INTO $1(data, valor) VALUES ('$2', $3)"

query13 = "SELECT nome FROM descricao_tabelas WHERE codigo=$1"

query14 = "UPDATE logatualizacao SET processar=0, data_atualizacao='$1' WHERE codigo_tabela=$2"
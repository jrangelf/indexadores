



'''
TABELA:
MÊS/ANO  |  INDEXADOR  |  VAR MENSAL (%) |  NUMERO INDICE | FATOR VIGENTE  | INDICE CORREÇÃO
    A    |      B      |        C        |       D        |       E        |      F 

0. tabela cujo indexador seja o IPCA-E
1. data atual 01/07/2023 (VIROU OU MÊS)
2. pegar o indexador IPCA-E de 01/06/2023, valor = 0,69%
3. incluir uma linha na tabela com a data de julho/2023
4. incluir na coluna C da linha anterior (junho) o valor de 0,69% (NOVA VAR MENSAL)
5. incluir na coluna D da linha anterior (junho) o valor de C + 1 (NOVO NÚMERO ÍNDICE)

6. incluir na coluna E na nova linha (julho) o valor da coluna E da linha anterior, ou seja,
de junho/2023, multiplicado pelo novo número índice que está na coluna D (no mês anterior -junho),
E = (E da linha anterior) * D, será o novo fator vigente.

7. incluir o novo fator vigente na coluna E da última linha (novo mês)
8. a última linha (novo mês) deve ter o mês/ano, o indexador, a variação mensal=0, 
número indice=1, fator vigente = novo fator vigente, indice correção=1.

9. deve-se atualizar toda a tabela, substituindo o indice correção,
por um outro que será calculado.
novo indice correção = novo fator vigente / antigo fator vigente

'''

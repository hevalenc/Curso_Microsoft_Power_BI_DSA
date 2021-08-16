#Estatística Básica
#Parte 2 - Medidas de Dispersão

#Definindo a pasta de trabalho:
setwd("E:/Documentos/EngSoft/Cursos/Data Science Academy/Microsoft Power BI para Data Science/Projetos/Capitulo_12")
getwd()

#Carregando o dataset:
vendas <- read.csv("Vendas.csv", fileEncoding = "Windows-1252")

#Resumo do dataset:
View(vendas) #visualização da tabela
str(vendas) #resumo da tabela e os tipos de cada coluna(variável)

#Resumo estatístico:
summary(vendas)
summary(vendas$Valor) #o símbolo '$' é uma anotação e chama a variável da tabela
summary(vendas$Custo)

#Variância:
var(vendas$Valor)

#Desvio Padrão:
sd(vendas$Valor)
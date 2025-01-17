#Estat�stica B�sica
#Parte 2 - Medidas de Dispers�o

#Definindo a pasta de trabalho:
setwd("E:/Documentos/EngSoft/Cursos/Data Science Academy/Microsoft Power BI para Data Science/Projetos/Capitulo_12")
getwd()

#Carregando o dataset:
vendas <- read.csv("Vendas.csv", fileEncoding = "Windows-1252")

#Resumo do dataset:
View(vendas) #visualiza��o da tabela
str(vendas) #resumo da tabela e os tipos de cada coluna(vari�vel)

#Resumo estat�stico:
summary(vendas)
summary(vendas$Valor) #o s�mbolo '$' � uma anota��o e chama a vari�vel da tabela
summary(vendas$Custo)

#Vari�ncia:
var(vendas$Valor)

#Desvio Padr�o:
sd(vendas$Valor)
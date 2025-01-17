#Estat�stica B�sica
#Parte 3 - Medidas de Posi��o Relativa

#A linguagem R � case sensitive!!!!

#Definindo a pasta de trabalho:
setwd("E:/Documentos/EngSoft/Cursos/Data Science Academy/Microsoft Power BI para Data Science/Projetos/Capitulo_12")
getwd()

#Carregando o dataset:
vendas <- read.csv("Vendas.csv", fileEncoding = "Windows-1252")

#Resumo dos dados:
head(vendas)
tail(vendas)
View(vendas)

#Medidas de Tend�ncia Central:
summary(vendas$Valor)
summary(vendas[c('Valor', 'Custo')]) #a letra 'c' cria um vetor de strings, no caso duas colunas

#Explorando vari�veis num�ricas:
mean(vendas$Valor)
median(vendas$Valor)
quantile(vendas$Valor)
quantile(vendas$Valor, probs = c(0.01, 0.99))
quantile(vendas$Valor, seq(from = 0, to = 1, by = 0.20))
IQR(vendas$Valor) #diferen�a entre Q3 e Q1
range(vendas$Valor)
summary(vendas$Valor)
diff(range(vendas$Valor))
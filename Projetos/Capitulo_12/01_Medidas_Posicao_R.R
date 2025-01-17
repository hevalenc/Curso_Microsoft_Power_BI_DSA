#Estat�stica B�sica
#Parte 1 - Medidas de Posi��o

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

#M�dia:
?mean
mean(vendas$Valor)
mean(vendas$Custo)

#M�dia Ponderada:
?weighted.mean
weighted.mean(vendas$Valor, w = vendas$Custo)

#Mediana:
median(vendas$Valor)
median(vendas$Custo)

#Moda:
#Criando uma fun��o:
moda <- function(v){
  valor_unico <- unique(v)
  valor_unico [which.max(tabulate(match(v, valor_unico)))]
}

#Obtendo a Moda:
resultado <- moda(vendas$Valor)
print(resultado)

resultado_custo <- moda(vendas$Custo)
print(resultado_custo)

#Criando gr�fico de M�dia de Valor por Estado com ggplot2:

install.packages("ggplot2") #instalar o pacote pela primeira vez
library(ggplot2)

#Cria o gr�fico:
ggplot(vendas) + stat_summary(aes(
    x = Estado,
    y = Valor),
    fun = mean,
    geom = "bar",
    fill = "lightgreen",
    col = "grey50") + 
  labs(title = "M�dia de Valor por Estado")

#Estatística Básica
#Parte 1 - Medidas de Posição

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

#Média:
?mean
mean(vendas$Valor)
mean(vendas$Custo)

#Média Ponderada:
?weighted.mean
weighted.mean(vendas$Valor, w = vendas$Custo)

#Mediana:
median(vendas$Valor)
median(vendas$Custo)

#Moda:
#Criando uma função:
moda <- function(v){
  valor_unico <- unique(v)
  valor_unico [which.max(tabulate(match(v, valor_unico)))]
}

#Obtendo a Moda:
resultado <- moda(vendas$Valor)
print(resultado)

resultado_custo <- moda(vendas$Custo)
print(resultado_custo)

#Criando gráfico de Média de Valor por Estado com ggplot2:

install.packages("ggplot2") #instalar o pacote pela primeira vez
library(ggplot2)

#Cria o gráfico:
ggplot(vendas) + stat_summary(aes(
    x = Estado,
    y = Valor),
    fun = mean,
    geom = "bar",
    fill = "lightgreen",
    col = "grey50") + 
  labs(title = "Média de Valor por Estado")

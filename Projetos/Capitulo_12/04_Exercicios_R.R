#Estat�stica B�sica
#Exerc�cio

#Definindo a pasta de trabalho:
setwd("E:/Documentos/EngSoft/Cursos/Data Science Academy/Microsoft Power BI para Data Science/Projetos/Capitulo_12")
getwd()

#Carregando o dataset:
notas <- read.csv("Notas.csv", fileEncoding = "Windows-1252")

#Exerc�cio 1: Apresente um resumo de tipos de dados e estat�sticas do dataset.
View(notas)
str(notas)
summary(notas$TurmaA)
summary(notas$TurmaB)

#Exerc�cio 2: Qual a m�dia de cada turma?
mean(notas$TurmaA)
mean(notas$TurmaB)

#Exerc�cio 3: Qual turma apresentou maior variabilidade de notas?
sd(notas$TurmaA)
sd(notas$TurmaB)

#Exerc�cio 4 - Calcule o coeficiente de varia��o das 2 turmas.
media_ta <- mean(notas$TurmaA)
media_tb <- mean(notas$TurmaB)

sd_ta <- sd(notas$TurmaA)
sd_tb <- sd(notas$TurmaB)

cvA <- sd_ta / media_ta * 100
cvB <- sd_tb / media_tb * 100

cvA
cvB

#Exerc�cio 5 - Qual nota apareceu mais vezes em cada turma?
calculaModa <- function(v){
  valor_unico <- unique(v)
  valor_unico [which.max(tabulate(match(v, valor_unico)))]
}

calculaModa(notas$TurmaA)
calculaModa(notas$TurmaB)
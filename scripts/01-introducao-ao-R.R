# Rodando códigos (o R como calculadora) ----------------------------------

# ATALHO para rodar o código: CTRL (COMMAND) + ENTER

# Comentário
# Isso não vai ser executado

1 + 1 
1+1 # Funciona também sem os espaços!

2 + 2

# Executar
# mouse no código: ctrl + enter
# mouse no código: botão run
# selecionar o códig e rodar com botão run (isso é util para resolver erros!)

# adição
1 + 1

# subtração
4 - 2

# multiplicação
2 * 3

# divisão
5 / 3

# potência

4^2

# Objetos -----------------------------------------------------------------

# As bases de dados serão o nosso objeto de trabalho
mtcars

# O objeto mtcars já vem com a instalação do R
# Ele está sempre disponível

# Outros exemplos
pi # valor único - vetor com tamanho 1
letters # vetor, com tamanho 26
LETTERS # vetor, tamanho 26

# DUVIDA -----
# ERRO NA CODIFICAÇÃO DOS CARACTERES!
# Reabrir o arquivo, escolhendo o encoding
# File (menu superior) -> Reopen with encoding
# Escolher encoding. se não souber, precisa testar!
# Mais comuns: UTF-8, Latin-1
# FIM DUVIDA ----
 

# Na prática, vamos precisar trazer nossas bases
# para dentro do R. Como faremos isso?


objeto_criado <- 30 # ATRIBUIÇÃO

# atalho
# <- ALT MENOS
# <- <- <- <- <- <- <- <- <- <- <-  (P/ MAC: option + menos)


# funciona com = , mas é melhor usar <-
nome = "Beatriz" #

# EXECUTAR: CTRL ENTER

# vamos criar alguns objetos!
meu_nome <- "Beatriz" # nos textos, precisamos colocar entre aspas
minha_idade <- 30  # numero nao precisa colocar entre aspas
tenho_pet <- TRUE # Falso é FALSE

nome_pets <- c("Chico", "Rocky", "Lobinho", "Bacurau", "Flecky") # combina elementos




# Funções -----------------------------------------------------------------

# conjunto de códigos
# tem algum objetivo, fazer alguma ação
# tem um nome

# c -> nome é c
# pra usar a função, usamos o nome()


Sys.Date() # data no computador que estou usando!
Sys.time()


# Oferecer elementos pro código ser executado
# argumentos!

somar_dois_numeros <- function(numero_a, numero_b) {
  numero_a + numero_b
}

somar_dois_numeros(10, 20)


contar_dias <- function(data){
  as.Date(data) - Sys.Date()
}

contar_dias("2023-12-25")



# Funções são nomes que guardam um código de R. Esse código é
# avaliado quando rodamos uma função.

nrow(mtcars) # número de linhas - row = linha
ncol(mtcars) # número de colunas - col = coluna
length(letters) # quantos elementos um vetor tem?


# Podemos usar a função help para ver
# a documentação de um objeto ou função
help(mtcars)
help(nrow)

?mean

# PAREI AQUI NA AULA 1 :) --------------------------

# Outro tipo de documentação: vignette. 

# Uma função muito útil para data frames é a View
View(mtcars)
head(mtcars)

# evitar em bases muito grandes, e em dados geoespaciais


# Uma função pode ter mais de um argumento
# Argumentos são sempre separados por vírgulas

sum(1, 2)
sum(2, 3, 4)

round(1.3453456234, digits = 2) 

round(1.3453456234, 2)

round(digits = 2, x = 1.3453456234)

# usar o ponto para separador decimal dentro do R.

# Existem funções para ler bases de dados

read.csv("dados/imdb.csv")

# CSV - Comma Separated Value - arquivo de texto
# valores separados por vírgula, ou ponto e vírgula (;).

# Como "salvar" a base dentro do R?

imdb <- read.csv("dados/imdb.csv")

# Criando objetos ---------------------------------------------------------

# No dia-a-dia, a gente vai precisar criar os 
# nossos próprios objetos

# chamamos de atribuição: <-

# Salvando o valor 1 no objeto "obj"
obj <- 1
obj

# Também dizemos 'guardando as saídas'
soma <- 2 + 2
soma

# ATALHO para a <- : ALT - (alt menos)

# Em geral, começaremos a nossa análise com:
# carregar ferramentas -> pacotes!
# nossa_base <- funcao_que_carrega_uma_base("caminho/ate/arquivo.csv")

# O erro "could not find function" significa que 
# você pediu para o R avaliar uma função que
# não existe. O mesmo vale para objetos:

nossa_base 

# Dicas:
# - sempre leia as mensagens de erro
# - verifique no Environment se um objeto existe
# - verifique se está escrito exatamente igual ao environment

# No nosso caso:
imdb <- read.csv("dados/imdb.csv")

# salvar saída versus apenas executar
33 / 11
resultado <- 33 / 11

# atualizar um objeto
resultado_vezes_5 <- resultado * 5
# tomar cuidado com salvar coisas em objetos com o mesmo nome!

# A nossa base imdb só será alterada quando salvarmos
# uma operação em cima do objeto imdb

na.exclude(imdb)



imdb_sem_na <- na.exclude(imdb)

# Os nomes devem começar com uma letra.
# Podem conter letras, números, _ e .

# Permitido

x <- 1
x1 <- 2
objeto <- 3
meu_objeto <- 4
meu.objeto <- 5




# Não permitido

1x <- 1 # nao pode começar com numero
_objeto <- 2 # nao pode começar com underline
meu-objeto <- 3 # nao usar traço 

# Estilo de nomes

eu_uso_snake_case # underline
outrasPessoasUsamCamelCase  # separa com maiusculas
algumas.pessoas.usam.pontos.mas.nao.deviam # pontos
E_algumasPoucas.Pessoas_RENUNCIAMconvenções # 


# checkpoint --------------------------------------------------------------

# 1. Apague os objetos criados na aba environment, clicando na  vassoura!



# 2. Escrevam (não copiem e colem) o código que lê a base e 
# a salva num objeto imdb. Rodem o código e observem 
# na aba environment se o objeto imdb apareceu.


imdb <- read.csv("dados/imdb.csv")




# Classes -----------------------------------------------------------------

imdb

# Cada coluna da base representa uma variável
# Cada variável pode ser de um tipo (classe) diferente

# Podemos somar dois números
1 + 2

# Não podemos somar duas letras (texto)
"a" + "b"

##############################
# Use aspas para criar texto #
##############################

a <- 10

# O objeto a, sem aspas
a

# A letra (texto) a, com aspas
"a"

# Numéricos (numeric)

a <- 10
class(a)

# Caracteres (character, strings) - textos!

obj <- "a"
obj2 <- "masculino"
obj3 <- 'abc'
# obj4 <- "abc' # isso nao funciona!

dez_mil <- "10000" # se tem aspas, é texto!
class(dez_mil)
class(as.numeric(dez_mil))

"13/11/2023" # se tem aspas, é texto!

class(obj)
class(obj2)



# lógicos (logical, booleanos)

verdadeiro <- TRUE # 1 
falso <- FALSE # 0

class(verdadeiro)

class(falso)

# Data frames (classe do objeto) - tibble, df, tabela

class(mtcars)
class(imdb)

imdb$ano
class(imdb$ano) # integer - número inteiro, não permite casas decimais!

imdb$nota_imdb

imdb$nota_imdb

class(imdb$nota_imdb) # numerico, numero c/ casas decimais




# Como acessar as colunas de uma base?
imdb$data_lancamento

# Como vemos a classe de uma coluna?
class(imdb$data_lancamento)

Sys.Date()
class(Sys.Date())
Sys.time()
class(Sys.time())

# Numero, texto, logico
# data, fator (dados categóricos)

# Vetores -----------------------------------------------------------------

# Vetores são conjuntos de valores: use a função c()

vetor1 <- c(1, 4, 3, 10)

vetor2 <- c("a", "b", "z")

vetor1
vetor2

# Uma maneira fácil de criar um vetor com uma sequência de números
# é utilizar o operador `:`

# Vetor de 1 a 10
1:10

# Vetor de 10 a 1
10:1

# Vetor de -3 a 3
-3:3

# As colunas de data.frames são vetores
mtcars$mpg
imdb$titulo

class(mtcars$mpg)
class(imdb$titulo)

# O operador $ pode ser utilizado para selecionar
# uma coluna da base

# Um vetor só pode guardar um tipo de objeto e ele terá sempre
# a mesma classe dos objetos que guarda

vetor1 <- c(1, 5, 3, -10)
vetor2 <- c("a", "b", "c")

class(vetor1)
class(vetor2)

# Se tentarmos misturar duas classes, o R vai apresentar o
# comportamento conhecido como coerção

vetor <- c(1, 2, "a")



vetor
class(vetor)

# character > numeric > integer > logical

# coerções forçadas por você
as.numeric(c(TRUE, FALSE, FALSE))
as.character(c(TRUE, FALSE, FALSE))

# Por consquência, cada coluna de uma base 
# guarda valores de apenas uma classe.

# Naturalmente, podemos fazer operações matemáticas com vetores

vetor <- c(0, 5, 20, -3)

vetor + 1
vetor - 1
vetor / 2
vetor * 10

# Reciclagem
vetor + 1



# Você também pode fazer operações que envolvem mais de um vetor:

vetor1 <- c(1, 2, 3)
vetor2 <- c(10, 20, 30)

vetor1 + vetor2

# R base: instalado apenas o R.

# Pacotes -----------------------------------------------------------------

# RStudio -> software que ajuda a gente a programar em R.
# Posit -> empresa que criou e mantém o RStudio
# Hadley Wickham 

# Para instalar pacotes
install.packages("tidyverse") # busca no CRAN
# instala uma vez!
# exceto:
# outro usuario
# quando atualiza o R


starwars



# cada vez que for usar, precisa carregar.

library(tidyverse) # para poder usar o pacote
library(dplyr)

View(starwars) # View do R base
view(starwars) # do tidyverse

# Também é possível acessar as funções usando ::
# mesmo sem o pacote carregado!
dplyr::starwars


dplyr::filter_at()
dplyr::transmute()

# aproveite o auto complete

dplyr::filter()


# E o view com v minúsculo? só com o tidyverse carregado

View(mtcars) # R base
view(mtcars) # tidyverse

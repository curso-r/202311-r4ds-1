library(tidyverse)

# Versão do R da Bea: 4.2.1

# R version 4.2.1 (2022-06-23) -- "Funny-Looking Kid"
# Copyright (C) 2022 The R Foundation for Statistical Computing
# Platform: aarch64-apple-darwin20 (64-bit)
# 
# R is free software and comes with ABSOLUTELY NO WARRANTY.
# You are welcome to redistribute it under certain conditions.
# Type 'license()' or 'licence()' for distribution details.
# 
# Natural language support but running in an English locale
# 
# R is a collaborative project with many contributors.
# Type 'contributors()' for more information and
# 'citation()' on how to cite R or R packages in publications.
# 
# Type 'demo()' for some demos, 'help()' for on-line help, or
# 'help.start()' for an HTML browser interface to help.
# Type 'q()' to quit R.

# Warning messages:
# 1: package ‘dplyr’ was built under R version 4.2.3 
# 2: package ‘stringr’ was built under R version 4.2.3 


# A versão atual no site 4.3.2
# - major (1 a cada alguns anos)
# - minor (geralmente 1 a cada ano)
# - patch (pequenas correções ao longo do ano)

# BEATRIZ E NATHAN ATUALIZEM O R

# importação ----
# O que vocês costumam usar?
# EXCEL
# CSV
# txt
# Google Sheets
# Dados do datasus! microdatasus




# Caminhos até o arquivo --------------------------------------------------

# Caminho - texto que indica onde um arquivo está no nosso computador!
"dados/imdb.rds"



# diretório de trabalho - onde o R vai buscar ou salvar arquivos.
getwd()
# "/Users/beatrizmilz/Documents/Curso-R/cursos/turmas/202311-r4ds-1"


# com projetos, o diretorio de trabalho é a pasta do projeto!




# Caminhos absolutos - Não é uma boa prática
"/Users/beatrizmilz/Documents/Curso-R/cursos/turmas/202311-r4ds-1"
"/home/william/Documents/Curso-R/main-r4ds-1/dados/imdb.csv"

# imdb <- leitura("~/Desktop/material_do_curso-r-para-ciencia-de-dados/dados/imdb.csv")

# Caminhos relativos - partem do diretório de trabalho
"dados/imdb.csv"
"dados/imdb.csv"

# (cara(o) professora(o), favor lembrar de falar da dica
# de navegação entre as aspas)

"dados/imdb.csv"

# aspas, colocar o cursor entre aspas, e clicar tab.

""

# dica separar os dados

# dados originais -> data-raw/
# dados que já foram modificados -> data/ 


# Tibbles -----------------------------------------------------------------

airquality # data frame

iris # data frame

class(airquality)

as_tibble(airquality)

# mostra a classe das colunas
# destaca os NAs por cor
# só tem 10 linhas na tibble - cabe na tela
# conseguimos ver os nomes das colunas
#  mostra o numero de linhas e colunas

class(as_tibble(airquality))
# "tbl_df"     "tbl"        "data.frame"

t_airquality <- as_tibble(airquality)

class(t_airquality)

# duvida guilherme

glimpse(t_airquality)
# Rows: 153
# Columns: 6
# $ Ozone   <int> 41, 36, 12, 18, NA, 28, 23, 19, 8, NA, 7, 16, 11, 14, 18, 1…
# $ Solar.R <int> 190, 118, 149, 313, NA, NA, 299, 99, 19, 194, NA, 256, 290,…
# $ Wind    <dbl> 7.4, 8.0, 12.6, 11.5, 14.3, 14.9, 8.6, 13.8, 20.1, 8.6, 6.9…
# $ Temp    <int> 67, 72, 74, 62, 56, 66, 65, 59, 61, 69, 74, 69, 66, 68, 58,…
# $ Month   <int> 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5,…
# $ Day     <int> 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, …


t_airquality
View(t_airquality)
head(t_airquality)

# install.packages("skimr")
skimr::skim(t_airquality)

# comentando um bloco de código: control shift c
# ── Data Summary ────────────────────────
# Values      
# Name                       t_airquality
# Number of rows             153         
# Number of columns          6           
# _______________________                
# Column type frequency:                 
#   numeric                  6           
# ________________________               
# Group variables            None        
# 
# ── Variable type: numeric ───────────────────────────────────────────────────────────────────────
# skim_variable n_missing complete_rate   mean    sd   p0   p25   p50   p75  p100 hist 
# 1 Ozone                37         0.758  42.1  33.0   1    18    31.5  63.2 168   ▇▃▂▁▁
# 2 Solar.R               7         0.954 186.   90.1   7   116.  205   259.  334   ▅▃▅▇▅
# 3 Wind                  0         1       9.96  3.52  1.7   7.4   9.7  11.5  20.7 ▂▇▇▃▁
# 4 Temp                  0         1      77.9   9.47 56    72    79    85    97   ▂▃▇▇▃
# 5 Month                 0         1       6.99  1.42  5     6     7     8     9   ▇▇▇▇▇
# 6 Day                   0         1      15.8   8.86  1     8    16    23    31   ▇▇▇▇▆

# Lendo arquivos de texto -------------------------------------------------

# Quais formatos vocês costumam usar?





# readr - pacote para importacao

# CSV, separado por vírgula-  comma separated values
imdb_csv <- read_csv("dados/imdb.csv")

# No Brasil e em alguns outros países
# usamos o ; como separador

# CSV, separado por ponto-e-vírgula
imdb_csv2 <- read_csv2("dados/imdb2.csv")


# TXT, separado por tabulação (tecla TAB)
imdb_txt <- read_delim("dados/imdb.txt", delim = "\t") # \t representa o tab

# A função read_delim funciona para qualquer tipo de separador
imdb_delim <- read_delim("dados/imdb.csv", delim = ",")
imdb_delim2 <- read_delim("dados/imdb2.csv", delim = ";")

# direto da internet
imdb_csv_url <- read_csv("https://raw.githubusercontent.com/curso-r/main-r4ds-1/master/dados/imdb.csv")


mananciais <- read_csv2("https://raw.githubusercontent.com/beatrizmilz/mananciais/master/inst/extdata/mananciais.csv")




# Interface point and click do RStudio também é útil!

# from text readr -> csv, txt, arquivos de texto

library(readr)
imdb_import <- read_delim(
  # arquivo usado
  "dados/imdb2.csv",
  # separador
  delim = ";",
  # não preocupar
  escape_double = FALSE,
  # tira espaços em branco extras
  trim_ws = TRUE
)
View(imdb_import)


library(readr)
mananciais_import <- read_delim("https://raw.githubusercontent.com/beatrizmilz/mananciais/master/inst/extdata/mananciais.csv", 
                         delim = ";", escape_double = FALSE, col_types = cols(data = col_date(format = "%Y-%m-%d")), 
                         locale = locale(decimal_mark = ",", grouping_mark = "."), 
                         trim_ws = TRUE)
View(mananciais_import)

?parse_date

# "chuta" qual encoding é provavel o arquivo ser:

guess_encoding("dados/imdb.csv")
# # A tibble: 2 × 2
# encoding   confidence
# <chr>           <dbl>
# 1 UTF-8            1   
# 2 ISO-8859-1       0.43


# Lendo arquivos do Excel -------------------------------------------------

library(readxl) 

# usa por padrão a primeira Sheet
imdb_excel <- read_excel("dados/imdb.xlsx")

# Listar sheets existentes no arquivo
excel_sheets("dados/imdb.xlsx")

# abrir uma Sheet específica
imdb_excel <- read_excel("dados/imdb.xlsx", sheet = "Sheet1")


# from excel -> xls, xlsx
library(readxl)
imdb <- read_excel("dados/imdb.xlsx", sheet = "Sheet1")
View(imdb)




library(readxl)
Relatorio_20230120 <- read_excel("dados/Relatorio_20230120.xlsx", 
                                 skip = 3)
View(Relatorio_20230120)

# install.packages("janitor")
library(janitor)

glimpse(Relatorio_20230120)

dados_sigbm <- clean_names(Relatorio_20230120)

# Salvando dados ----------------------------------------------------------

# As funções iniciam com 'write'

imdb <- read_csv2("dados/imdb2.csv")

# CSV
write_csv(imdb, file = "imdb.csv")

write_csv2(imdb, "dados-exportados/imdb-2.csv")

# write_delim()

# Excel
library(writexl)
write_xlsx(imdb, path = "dados-exportados/imdb.xlsx", format_headers = TRUE)

# O formato rds -----------------------------------------------------------

# .rds são arquivos binários do R
# Você pode salvar qualquer objeto do R em formato .rds

imdb_rds <- read_rds("dados/imdb.rds")

write_rds(imdb_rds, file = "dados/imdb_rds.rds")

# útil como arquivo interdiário

# DADOS DO SIGBM
# baixa dados do excel
# abre no R
# script de limpeza
# salva um rds
# analise exploratoria -> abre o rds arrumado :) 


# rds as classes
# exemplo;
# fatores - dados categoricos

# -----------------------------
library(tidyverse)
library(googlesheets4)

url_planilha <- "https://docs.google.com/spreadsheets/d/1ia4JYRINFf4LhRSoUmZ0BxBojWQdws1FQAJGSJ-DwfQ/edit?usp=sharing"

sheet_names(url_planilha)
# "Brindes PetLove"   "Promoções PetLove" "CUPONS" 

brindes <- read_sheet(url_planilha, sheet = "Brindes PetLove")

# microdatasus

# install.packages("remotes")

# remotes::install_github("rfsaldanha/microdatasus")

library(microdatasus)
# https://github.com/rfsaldanha/microdatasus/wiki/fetch_datasus

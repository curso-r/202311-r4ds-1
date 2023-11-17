esp_vida_2010 <- c(
  71.63, 70.32, 73.8, 73.3, 71.97, 72.6, 77.35, 75.1, 74.6,
  70.4, 74.25, 74.96, 75.3, 72.36, 72, 74.8, 72.32, 71.62,
  75.1, 72.52, 75.38, 72.97, 73.51, 76.61, 75.69, 71.84, 72.56
)

quantile(x = esp_vida_2010)
# podemos ver a distribuicao de forma gráfica!

# round(nome_do_vetor, numero_de_casas_decimais)
round(esp_vida_2010, digits = 1)

# ordem dos argumentos
quantile(x = esp_vida_2010)
quantile(esp_vida_2010)

seq(0, 1, 0.25)
quantile(esp_vida_2010, probs = c(0.25, 0.5, 0.75))
quantile(probs = c(0.25, 0.5, 0.75), x = esp_vida_2010)

# O R usa primeiro por nome do argumento!
# se não informar nome do argumento, ele usa a posição.

# Exemplo: isso gera erro pois não tem o nome dos argumentos.
# quantile(c(0.25, 0.5, 0.75), esp_vida_2010)


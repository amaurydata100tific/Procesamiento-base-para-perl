base <- read.csv("C:/Users/Disponible/Documents/Nueva carpeta/CORPUS/portales_1M.csv", fileEncoding = 'UTF-8')
base2 <- read.csv("C:/Users/Disponible/Documents/Nueva carpeta/CORPUS/portales_1.csv")


base$texto_simple <- NULL
base$salario_men_med <- NULL
base$termino_simp <- NULL
base$termino <- NULL
base$X <- NULL
base$Unnamed <- NULL
names(base)

# base$'' = c(0:1132251)


b <- data.frame(b,"X" = c(0:1064624))

# names(base)

table(a$X)

base <- base [ ,c(25,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24)]
names(base)
names(base2)


names(base) = c ("x", "empresa", "puesto", "categoria",  "publicacion", "salario", "dedicacion", "contrato",
                  "area", "texto", "fconsul","url", "portal", "contrato_beca", "contrato_indefinido", "contrato_otro",
                  "contrato_comision", "contrato_temporal", "salariof", "periodo_salario", "tiene_dec", "salarioi",
                  "salario_men_med2","cve_mun", "alcaldia")


carpeta <- "C:/Users/Disponible/Documents/Nueva carpeta/CORPUS/"
write.csv(base, paste0(carpeta, "portales_intento", ".csv"), fileEncoding = "UTF-8")

###############################################################################################
######## Para unir la de Portales estrucurado con la de perl 
a <- read.csv("C:/Users/Disponible/Documents/Nueva carpeta/CORPUS/portales_intento_2.csv", fileEncoding = 'UTF-8')
bb <- read.csv("C:/Users/Disponible/Documents/Nueva carpeta/ANALYSE/fichero_analisis.csv", fileEncoding = 'UTF-8')

a$X <- as.factor(a$X)

b <- b[b$X.ID !="#----------------------------------------------------------------------------------------------------", ]

b$X <- NULL
b$X.81 <- NULL
b$X.82 <- NULL
b$X.83 <- NULL
b$X.84 <- NULL
b$X.85 <- NULL
b$X.86 <- NULL
b$X.87 <- NULL
b$X.88 <- NULL
b$X.89 <- NULL
b$X.90 <- NULL

ab <-full_join(a,b, by= c("X"="X.ID"))

c <- anti_join(a,b, by =c("X"="X.ID"))


carpeta_2 <- "C:/Users/Disponible/Documents/Nueva carpeta/"
write.csv(ab, paste0(carpeta_2, "portales_union", ".csv"), fileEncoding = "UTF-8")


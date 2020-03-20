# -*- coding: utf-8 -*-
"""
# Carga de datos a través de la función read_csv
"""
### iMPORTAR PAQUETERÍA
import pandas as pd
import os
## Importar bases de datos 
mainpath = "C:/Users/Disponible/Documents/Nueva carpeta/CORPUS/"
filename = "portales_intento.csv"
fullpath = os.path.join (mainpath, filename)
#### Función read csv

data3 = pd.read_csv(fullpath)

data2 = pd.read_csv(mainpath + "/" + "portales_prueba.csv")

data3= pd.read_csv(mainpath + "/" + "portales_intento.csv", encoding ='UTF-8')

data2.columns.values
data.columns.values

data3.to_csv(mainpath + "/" + "portales_intento_2.csv", encoding = 'UTF-8', sep='\t')
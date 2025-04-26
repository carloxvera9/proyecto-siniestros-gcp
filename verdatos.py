import pandas as pd

df = pd.read_csv('data/siniestros.csv') # Carga el archivo CSV en un DataFrame de pandas

df.head(10)  # Muestra las primeras 10 filas del DataFrame

print("\nResumen:") 
print(df.info())  # Muestra un resumen del DataFrame, incluyendo el número de entradas y tipos de datos
print("\nEstadísticas:")
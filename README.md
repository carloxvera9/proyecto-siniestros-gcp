# 🚨 Dashboard BI - Análisis de Siniestros RIMAC (GCP + BigQuery + Looker Studio)

Este proyecto simula el análisis de siniestros (accidentes, robos, incendios) para una aseguradora como RIMAC, usando una arquitectura moderna en la nube con **Google Cloud Platform (GCP)**. Ideal para roles de **Data Analyst** o **Data Engineer Jr**.

---

## 🛠️ Tecnologías utilizadas

- **Python** (generación de datos sintéticos con Faker)
- **Pandas** (exportación a CSV)
- **Google Cloud Storage** (almacenamiento)
- **BigQuery** (consulta y modelado de datos)
- **Looker Studio** (visualización interactiva de BI)

---

## ⚙️ Flujo del proyecto

1. **Generación de datos**  
   Datos ficticios generados en Python con Faker: siniestros, montos, fechas, tipo y ubicación.

2. **Carga en GCP**  
   El archivo `.csv` fue subido a un bucket en Google Cloud Storage.

3. **Carga en BigQuery**  
   Se creó una tabla a partir del CSV cargado, con los campos bien definidos.

4. **Vista limpia (SQL)**  
   Se creó una vista en BigQuery sin tildes ni caracteres especiales para usar en Looker.

5. **Dashboard BI**  
   Se construyó un dashboard en Looker Studio con filtros por año, zona y visualizaciones de:
   - Monto total y promedio por tipo de siniestro
   - Siniestros por zona geográfica
   - Cantidad por año
   - Tabla comparativa y filtros dinámicos

---

## 📊 Vista previa del dashboard

👉 **[Accede al Dashboard en Looker Studio](https://lookerstudio.google.com/reporting/25a012e8-003d-445b-ac00-3904666ac316)**

---

## 📂 Estructura del repositorio

```
proyecto-siniestros-gcp/
│
├── data/
│   └── siniestros.csv              # Dataset ficticio generado
│
├── generar_data.py                 # Script Python para generar los datos
├── README.md                       # Este archivo
├── requirements.txt                # Dependencias del proyecto
├── .gitignore                      # Archivos a ignorar en Git
├── screenshots/                    # Capturas del dashboard (opcional)
└── sql_gcp.sql                     # Sentencias usadas para filtros en Looker
```

---

## 🧠 Aprendizajes

✔️ Buenas prácticas para cargar y limpiar datos en GCP  
✔️ Diseño de vistas limpias y optimizadas en BigQuery  
✔️ Uso de Looker Studio para construir dashboards BI con filtros  
✔️ Automatización básica y visualización sin costo usando la capa gratuita de GCP

---

## 📌 Autor

**Carlos Alexandro Vera Torres**

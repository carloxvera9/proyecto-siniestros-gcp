import pandas as pd
import random
from faker import Faker

fake = Faker('es_ES')  # Usamos localización Perú

tipos = ['Robo', 'Accidente', 'Incendio']
zonas = ['Lima Norte', 'Lima Sur', 'Piura', 'Arequipa', 'Trujillo']
estados = ['Aprobado', 'En revisión', 'Rechazado']

data = []
    
for i in range(500):
    data.append({
        'id_siniestro': f'SIN{i+1:04}',
        'id_cliente': f'CLI{random.randint(1, 100):03}',
        'tipo_siniestro': random.choice(tipos),
        'fecha_evento': fake.date_between(start_date='-2y', end_date='today'),
        'monto_estimado': round(random.uniform(500, 15000), 2),
        'zona_geográfica': random.choice(zonas),
        'estado_reembolso': random.choice(estados)
    })

df = pd.DataFrame(data)
df.to_csv('data/siniestros.csv', index=False)

print("✅ Datos generados correctamente en data/siniestros.csv")
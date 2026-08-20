# 📊 Retail Sales & Profitability Margin Analysis

## 📌 1. Executive Summary & Business Problem
Este proyecto transiciona un conjunto de datos transaccionales brutos de ventas minoristas hacia una solución interactiva de inteligencia de negocios. El objetivo principal es evaluar la rentabilidad del catálogo de productos, identificar fluctuaciones estacionales en los ingresos y detectar ineficiencias en los márgenes de ganancia por categoría y región geográfica.

---

## 🧹 2. Data Cleaning & Transformation (Excel / Power Query)
Antes del modelado y la visualización, se realizó un proceso de ETL y preparación de datos para garantizar la integridad analítica:

* **Estructuración de Datos:** Conversión del rango de datos crudos a una **Tabla Oficial de Excel** (`Tabla_Final`) para asegurar que Power BI reconozca límites exactos y excluya filas vacías o fuera de rango.
* **Ajuste de Tipos de Datos:** Corrección del formato del campo `Date` a tipo Fecha ISO y aseguramiento de tipos numéricos adecuados para métricas operativas (`Revenue`, `Profit`, `Cost`, `Order_Quantity`).
* **Tratamiento de Nulos y Duplicados:** Validación de registros completos y eliminación de filas inconsistentes para evitar desviaciones en el cálculo de promedios.

---

## 🛠️ 3. Tech Stack & Architecture
* **Data Processing & ETL:** Excel / Power Query (Limpieza y estandarización de `Tabla_Final`).
* **Exploratory Analytics:** SQL Server (Consultas de agregación y validación cruzada de totales).
* **Data Modeling & DAX:** Power BI Desktop (Creación de medidas explícitas para evitar problemas de escala en ejes visuales).
* **Visualization:** Power BI Desktop (Dashboard dinámico enfocado en jerarquía visual, alertas de contraste y segmentación).

---

## 📐 4. Key Metrics & DAX Formulations
Se construyeron medidas explícitas en DAX para permitir recálculos dinámicos según los filtros aplicados:

```dax
-- Total Revenue
Total Revenue = SUM(Tabla_Final[Revenue])

-- Total Profit
Total Profit = SUM(Tabla_Final[Profit])

-- Profit Margin Percentage
Margin Pct = DIVIDE([Total Profit], [Total Revenue], 0)

-- Average Ticket
Promedio Ticket = AVERAGE(Tabla_Final[Revenue])

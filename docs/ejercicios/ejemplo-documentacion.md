# Ejemplo de documentación generada por Copilot

> Este es un ejemplo del tipo de documentación que Copilot puede generar
> cuando tiene contexto real de tu proyecto a través del MCP Connector.

---

## `cliente-reporte.p` — Reporte de clientes con balance

### Descripción
Programa que genera un reporte de clientes de la tabla `Customer` cuyo balance
supera un umbral definido, mostrando nombre, ciudad y balance.

### Tablas utilizadas

| Tabla | Acceso | Campos |
|-------|--------|--------|
| `Customer` | `NO-LOCK` | `Name`, `City`, `Balance`, `Cust-Num` |

### Variables

| Variable | Tipo | Propósito |
|----------|------|----------|
| `dLimite` | `DECIMAL` | Umbral mínimo de balance (1000.00) |
| `iTotal` | `INTEGER` | Contador de clientes que cumplen el filtro |

### Flujo de ejecución

1. Define variables de trabajo
2. Recorre `Customer` con `FOR EACH ... NO-LOCK`
3. Filtra por `Balance >= dLimite`
4. Muestra nombre, ciudad y balance por cada registro
5. Acumula contador
6. Muestra total al final

### Notas
- Usa `NO-LOCK` para lectura sin bloqueo
- El umbral está hardcodeado — se podría parametrizar con `INPUT PARAMETER`
- Compatible con sports2000 database

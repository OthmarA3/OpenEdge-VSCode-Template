# department_crud.w — Documentacion

> Generado con GitHub Copilot + MCP Connector

## Descripcion

Programa de ventana (.w) que implementa operaciones CRUD (Crear, Leer, Actualizar, Eliminar) sobre la tabla **Department** de la base de datos **sports2000**.

## Tabla utilizada

| Tabla | Base de datos | Campos principales |
|-------|---------------|--------------------|
| Department | sports2000 | DeptCode, DeptName |

## Componentes

### Variables

| Variable | Tipo | Uso |
|----------|------|-----|
| `hQuery` | HANDLE | Handle del query para browse |
| `hBrowse` | HANDLE | Handle del browse |
| `lOk` | LOGICAL | Confirmacion de eliminacion |

### Frames

| Frame | Proposito |
|-------|-----------|
| `fMain` | Formulario de captura (DeptCode, DeptName) |
| `fBrowse` | Browse con listado de departamentos |
| `fButtons` | Barra de botones (Agregar, Guardar, Eliminar, Cerrar) |

### Botones

| Boton | Accion |
|-------|--------|
| Agregar | Crea registro nuevo y habilita campos |
| Guardar | Asigna valores del formulario al registro |
| Eliminar | Pide confirmacion y elimina registro |
| Cerrar | Cierra la ventana |

## Flujo de ejecucion

1. Se abre el query sobre Department
2. Se muestra el browse con registros existentes
3. El usuario puede:
   - **Agregar**: crea registro vacio, habilita formulario
   - **Guardar**: toma valores del formulario y los asigna
   - **Eliminar**: pide confirmacion con MESSAGE, borra si acepta
   - **Cerrar**: aplica CLOSE al procedimiento

## Dependencias

- Base de datos: `sports2000` (conectada via `startup.pf`)
- Tabla: `Department`
- No depende de includes externos

## Ejecucion

```
Ctrl+Shift+P → "Tasks: Run Task" → "Run ABL GUI"
```

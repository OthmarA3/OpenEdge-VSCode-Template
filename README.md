# OpenEdge VSCode Template

Template para proyectos **Progress OpenEdge** con Visual Studio Code, GitHub Copilot y MCP Connector.

## Quick Start

1. Click en **"Use this template"** para crear tu repositorio
2. Clona tu nuevo repositorio
3. Abre la carpeta en VSCode
4. Ajusta la ruta de OpenEdge en `.vscode/settings.json`
5. Compila y ejecuta con `Ctrl+Shift+P` → "Tasks: Run Task"

## Estructura del Proyecto

```
MiProyecto/
├── .vscode/
│   ├── settings.json       # Ruta de OpenEdge y runtime
│   ├── tasks.json          # Compilar y ejecutar (GUI/Batch)
│   ├── launch.json         # Depuración (Attach to AVM)
│   └── extensions.json     # Extensiones recomendadas
├── db/
│   ├── data/               # Bases de datos locales
│   ├── schema/             # Esquemas (.df)
│   └── init/               # Scripts de inicialización
├── docs/                   # Documentación del proyecto
├── src/
│   ├── main/
│   │   ├── p/              # Programas (.p)
│   │   ├── i/              # Includes (.i)
│   │   ├── w/              # Ventanas (.w)
│   │   ├── cls/            # Clases (.cls)
│   │   └── lib/            # Librerías
│   └── test/               # Pruebas ABLUnit
├── openedge-project.json   # Configuración del proyecto ABL
├── startup.pf              # Parámetros de conexión a BD
├── .gitignore
├── .gitattributes
└── README.md
```

## Ramas de Ejemplo

| Rama | Descripción |
|------|-------------|
| [`main`](../../tree/main) | Template limpio — punto de partida |
| [`example/hello-world`](../../tree/example/hello-world) | Programa mínimo para verificar compile + run |
| [`example/crud-sports2000`](../../tree/example/crud-sports2000) | CRUD Department + conexión sports2000 |
| [`example/legacy-migration`](../../tree/example/legacy-migration) | Migrar proyecto legacy a estructura organizada |
| [`example/with-copilot-docs`](../../tree/example/with-copilot-docs) | Documentación generada con Copilot |

## Configuración

### 1. Ruta de OpenEdge (`settings.json`)

Edita `.vscode/settings.json` y cambia el `path` por tu instalación:

```json
{
  "abl.configuration.runtimes": [
    {
      "name": "12.8",
      "path": "C:\\Progress\\OpenEdge"
    }
  ]
}
```

### 2. Conexión a Base de Datos (`startup.pf`)

Descomenta y ajusta la línea de conexión:

```
-db db/data/sports2000 -1
```

### 3. Proyecto ABL (`openedge-project.json`)

El archivo ya viene configurado. Ajusta `dbConnections` si tienes una BD:

```json
"dbConnections": [
  {
    "name": "sports2000",
    "connect": "-db db/data/sports2000 -1",
    "schemaFile": "db/schema/sports2000.df",
    "aliases": ["sports2000"]
  }
]
```

## Tareas Disponibles

| Tarea | Descripción | Atajo |
|-------|-------------|-------|
| Run ABL GUI | Ejecutar con interfaz gráfica | `Ctrl+Shift+P` → Tasks |
| Run ABL Batch | Ejecutar en consola | `Ctrl+Shift+P` → Tasks |
| Compile ABL File | Compilar programa actual | `Ctrl+Shift+B` |
| Compile All ABL | Compilar todo en `src/` | `Ctrl+Shift+P` → Tasks |

## Depuración

1. Ejecuta `proDebugEnable -enable-all` en proenv (una sola vez)
2. Pon breakpoints haciendo click en el margen izquierdo
3. Presiona `F5` → selecciona "Attach to AVM"
4. Usa `F10` (Step Over), `F11` (Step Into), `F5` (Continue)

## Wiki

Consulta la [Wiki del proyecto](../../wiki) para guías detalladas de cada paso.

## Requisitos

- Progress OpenEdge 12.x (12.8 recomendado)
- Visual Studio Code
- [Extensión OpenEdge ABL](https://marketplace.visualstudio.com/items?itemName=RiversideSoftware.openedge-abl-lsp) (Riverside Software)
- [GitHub Copilot](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot) (opcional pero recomendado)

---

Creado por [A3 Akubica](https://akubica.com) — Febrero 2026

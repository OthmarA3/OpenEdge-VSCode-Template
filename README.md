# OpenEdge VSCode Template

Repositorio plantilla para desarrollar en **Progress OpenEdge ABL** usando Visual Studio Code, la extensión ABL de Riverside, GitHub Copilot y MCP Connector.

Incluye una base de datos sports2000 preconfigurada, tareas de compilación/ejecución, depuración con breakpoints, y programas de ejemplo listos para usar.

## Prerrequisitos

- **Progress OpenEdge 12.8+** instalado (ruta por defecto: `C:\Progress\OpenEdgev128`)
- **Visual Studio Code** — [Descargar](https://code.visualstudio.com/)
- **Extensión OpenEdge ABL** (Riverside) — desde el Marketplace de VSCode
- **GitHub Copilot** (opcional, recomendado)
- **Git** — [Descargar](https://git-scm.com/)

## Inicio rápido

```bash
git clone https://github.com/OthmarA3/OpenEdge-VSCode-Template.git
cd OpenEdge-VSCode-Template
code .
```

1. Abrir `.vscode/settings.json` y verificar la ruta del runtime de OpenEdge
2. Ejecutar `test-connection.p` → `Ctrl+Shift+P` → "Tasks: Run Task" → "Run ABL GUI"
3. Si aparece un nombre de cliente en el alert-box, todo funciona

## Estructura

```
├── .vscode/
│   ├── settings.json          ← Ruta del runtime de OpenEdge
│   ├── tasks.json             ← Run GUI, Run Batch, Kill AVM, Debug tasks
│   └── launch.json            ← Debug Automatic y Manual (puerto 3099)
├── src/main/p/                ← Código fuente
│   ├── hello-world.p          ← Programa básico
│   ├── test-connection.p      ← Verifica conexión a BD
│   ├── demo-mcp.p             ← Para demos con Copilot + MCP
│   └── customer-report.p      ← Reporte de ejemplo
├── data/
│   ├── db/                    ← Base de datos sports2000
│   └── schema/                ← Archivo .df (schema)
├── build/                     ← Archivos compilados (.r)
├── openedge-project.json      ← Configuración del proyecto ABL
├── startup.pf                 ← Parámetros de conexión (-db sports2000 -1)
└── .gitignore
```

## Archivos de configuración

| Archivo | Función |
|---|---|
| `settings.json` | Dónde está instalado OpenEdge |
| `openedge-project.json` | Fuentes, compilados, PROPATH, conexión a BD |
| `startup.pf` | Parámetros de conexión a la base de datos |
| `tasks.json` | Tareas de ejecución y kill de procesos |
| `launch.json` | Configuración de depuración con breakpoints |

## Documentación

Consulta el [Wiki](https://github.com/OthmarA3/OpenEdge-VSCode-Template/wiki) para guías detalladas de cada archivo de configuración, instalación del MCP Connector, depuración y uso de Copilot.

## Licencia

Uso educativo — Curso OpenEdge + IA.

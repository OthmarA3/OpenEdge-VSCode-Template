# Prompts sugeridos para Copilot + MCP Connector

Abre **Copilot Chat** (`Ctrl+Shift+I`) y prueba estos prompts.
Con el MCP Connector activo, Copilot conoce tus tablas y tu proyecto.

---

## 1. Generar un programa

> "Genera un programa ABL que liste los clientes con balance mayor a 1000, mostrando nombre, ciudad y balance"

**Qué observar:** Copilot usa `Customer`, `Name`, `City`, `Balance` — campos reales de tu BD.

---

## 2. Generar un include

> "Crea un include para validar que un RFC tenga 13 caracteres. La variable de entrada se llama cRFC"

**Qué observar:** Genera un `.i` con sintaxis ABL correcta y manejo de errores.

---

## 3. Refactorizar código existente

1. Abre `src/main/p/cliente-reporte.p`
2. Pide:

> "Refactoriza este programa: separa la lógica de negocio en un include y el programa principal solo lo llama"

**Qué observar:** Copilot genera el include en `src/main/i/` y modifica el programa principal.

---

## 4. Documentar código

1. Abre `src/main/p/cliente-reporte.p`
2. Pide:

> "Documenta este programa en Markdown: qué hace, qué tablas usa, parámetros y flujo principal"

**Qué observar:** Copilot genera documentación técnica que entiende las tablas Progress reales.

---

## Comparación: Copilot vs ChatGPT

| Aspecto | Copilot + MCP | ChatGPT |
|---------|--------------|--------|
| Tablas | Usa `Customer`, `Order` reales | Inventa `tblClientes` |
| Campos | `Cust-Num`, `Name`, `Balance` | Inventa `id_cliente` |
| Sintaxis | ABL correcto | Mezcla con otros lenguajes |
| Estructura | Respeta `src/main/` | Genérica |
| Includes | Sabe que usas `{src/main/i/...}` | No conoce tu proyecto |

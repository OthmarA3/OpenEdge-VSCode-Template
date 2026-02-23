# Estructura Legacy (antes)

Esta carpeta muestra como lucen tipicamente los proyectos legacy:
archivos `.p`, `.i`, `.w` mezclados en carpetas planas sin organizacion.

```
before/
├── clientes.p
├── clientes.i
├── reportes.p
├── val-rfc.i
├── util.p
└── ventana-principal.w
```

## Despues de migrar

Los archivos se organizan en `src/main/` por tipo:

```
src/main/
├── p/clientes.p
├── p/reportes.p
├── p/util.p
├── i/clientes.i
├── i/val-rfc.i
└── w/ventana-principal.w
```

Y el PROPATH se configura con wildcard: `src/main/*`

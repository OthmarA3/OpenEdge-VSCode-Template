# Tablas Clave — sports2000

> Generado con GitHub Copilot + MCP Connector

## Customer

Tabla principal de clientes.

| Campo | Tipo | Descripcion |
|-------|------|-------------|
| CustNum | INTEGER | Numero unico de cliente (PK) |
| Name | CHARACTER | Nombre del cliente |
| Country | CHARACTER | Pais |
| Address | CHARACTER | Direccion |
| City | CHARACTER | Ciudad |
| State | CHARACTER | Estado/Provincia |
| PostalCode | CHARACTER | Codigo postal |
| Phone | CHARACTER | Telefono |
| SalesRep | CHARACTER | Representante de ventas |
| CreditLimit | DECIMAL | Limite de credito |
| Balance | DECIMAL | Saldo actual |

### Indices

| Indice | Campos | Tipo |
|--------|--------|------|
| CustNum | CustNum | PRIMARY UNIQUE |
| Name | Name | NON-UNIQUE |
| SalesRep | SalesRep | NON-UNIQUE |

---

## Department

Departamentos de la organizacion.

| Campo | Tipo | Descripcion |
|-------|------|-------------|
| DeptCode | CHARACTER | Codigo del departamento (PK) |
| DeptName | CHARACTER | Nombre del departamento |

### Indices

| Indice | Campos | Tipo |
|--------|--------|------|
| DeptCode | DeptCode | PRIMARY UNIQUE |

---

## Order

Ordenes de compra de clientes.

| Campo | Tipo | Descripcion |
|-------|------|-------------|
| OrderNum | INTEGER | Numero de orden (PK) |
| CustNum | INTEGER | Referencia a Customer |
| OrderDate | DATE | Fecha de la orden |
| ShipDate | DATE | Fecha de envio |
| PromiseDate | DATE | Fecha prometida |
| Carrier | CHARACTER | Transportista |
| OrderStatus | CHARACTER | Estado de la orden |

### Indices

| Indice | Campos | Tipo |
|--------|--------|------|
| OrderNum | OrderNum | PRIMARY UNIQUE |
| CustOrder | CustNum, OrderNum | NON-UNIQUE |
| OrderDate | OrderDate | NON-UNIQUE |

---

## Relaciones

```
Customer (1) ──── (*) Order
                         │
Department ──────────────┘ (via SalesRep)
```

- Un **Customer** puede tener muchos **Orders**
- Los **Orders** se relacionan via `CustNum`
- **Department** organiza los representantes de ventas

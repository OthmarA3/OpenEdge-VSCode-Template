/* reportes.p — Reporte de clientes (migrado) */
{src/main/i/clientes.i}

FOR EACH Customer NO-LOCK:
    ASSIGN cNombreCliente = Customer.Name
           iNumCliente    = Customer.CustNum.
    DISPLAY iNumCliente cNombreCliente.
END.

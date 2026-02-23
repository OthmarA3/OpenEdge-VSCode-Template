/* reportes.p — Ejemplo de programa legacy */
{clientes.i}

FOR EACH Customer NO-LOCK:
    ASSIGN cNombreCliente = Customer.Name
           iNumCliente    = Customer.CustNum.
    DISPLAY iNumCliente cNombreCliente.
END.

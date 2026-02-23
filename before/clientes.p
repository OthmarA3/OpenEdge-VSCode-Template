/* clientes.p — Ejemplo de programa legacy en carpeta plana */
{val-rfc.i}

FOR EACH Customer NO-LOCK:
    DISPLAY Customer.CustNum Customer.Name Customer.Country.
END.

/* clientes.p — Programa de clientes (migrado a estructura organizada) */
{src/main/i/clientes.i}
{src/main/i/val-rfc.i}

FOR EACH Customer NO-LOCK:
    DISPLAY Customer.CustNum Customer.Name Customer.Country.
END.

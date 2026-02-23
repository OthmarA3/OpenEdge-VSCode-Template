/* ejercicio2.p — Recorrer clientes */
DEFINE VARIABLE dTotal AS DECIMAL NO-UNDO.
DEFINE VARIABLE iCuenta AS INTEGER NO-UNDO.

FOR EACH Customer NO-LOCK
    WHERE Customer.Cust-Num <= 10:
    dTotal = dTotal + Customer.Balance.
    iCuenta = iCuenta + 1.
END.

MESSAGE "Total:" dTotal "Clientes:" iCuenta
    VIEW-AS ALERT-BOX.

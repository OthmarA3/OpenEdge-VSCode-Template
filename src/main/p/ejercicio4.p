/* ejercicio4.p — Usar un include */
DEFINE VARIABLE cNombre AS CHARACTER NO-UNDO.

FOR EACH Customer NO-LOCK
    WHERE Customer.Cust-Num <= 5:
    cNombre = Customer.Name.
    {src/main/i/ej4-formato.i}
    MESSAGE cFormato VIEW-AS ALERT-BOX.
END.

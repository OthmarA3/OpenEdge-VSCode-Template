/* cliente-reporte.p — Reporte de clientes con balance alto */
DEFINE VARIABLE dLimite AS DECIMAL NO-UNDO INITIAL 1000.
DEFINE VARIABLE iTotal  AS INTEGER NO-UNDO.

FOR EACH Customer NO-LOCK
    WHERE Customer.Balance >= dLimite:
    DISPLAY
        Customer.Cust-Num FORMAT ">>>>9"
        Customer.Name     FORMAT "x(20)"
        Customer.City     FORMAT "x(15)"
        Customer.Balance  FORMAT "->>,>>9.99"
        WITH FRAME fReporte DOWN.
    iTotal = iTotal + 1.
END.

MESSAGE "Total clientes con balance >=" dLimite ":" iTotal
    VIEW-AS ALERT-BOX INFORMATION.

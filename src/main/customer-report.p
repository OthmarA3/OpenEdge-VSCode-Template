DEFINE VARIABLE iTotal AS INTEGER NO-UNDO.
DEFINE VARIABLE dBalance AS DECIMAL NO-UNDO.

FOR EACH Customer NO-LOCK
    WHERE Customer.Country = "USA"
    BY Customer.State:

    IF Customer.Balance > 0 THEN DO:
        DISPLAY
            Customer.CustNum FORMAT ">>>>9"
            Customer.Name FORMAT "x(20)"
            Customer.State
            Customer.Balance FORMAT "->>,>>9.99".
        
        ASSIGN
            iTotal   = iTotal + 1
            dBalance = dBalance + Customer.Balance.
    END.
END.

MESSAGE "Total clientes con balance:" iTotal SKIP
        "Balance acumulado:" dBalance
    VIEW-AS ALERT-BOX.

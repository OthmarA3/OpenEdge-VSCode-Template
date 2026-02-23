/* ej3-detalle.p — Sub-programa llamado desde master */
FOR EACH Customer NO-LOCK
    WHERE Customer.Cust-Num <= 5:
    MESSAGE Customer.Name VIEW-AS ALERT-BOX.
END.

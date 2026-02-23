/* util.p — Utilidades generales (legacy) */
FUNCTION formatea-fecha RETURNS CHARACTER (INPUT dFecha AS DATE):
    RETURN STRING(MONTH(dFecha), "99") + "/" +
           STRING(DAY(dFecha), "99") + "/" +
           STRING(YEAR(dFecha), "9999").
END FUNCTION.

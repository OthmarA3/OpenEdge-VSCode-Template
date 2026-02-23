/* val-rfc.i — Validacion basica de RFC mexicano (migrado)
   Uso: {src/main/i/val-rfc.i}
   Requiere: DEFINE VARIABLE cRFC AS CHARACTER.
   Resultado: DEFINE VARIABLE VALID-RFC AS LOGICAL.
*/

DEFINE VARIABLE VALID-RFC AS LOGICAL NO-UNDO INITIAL FALSE.

IF LENGTH(cRFC) = 12 OR LENGTH(cRFC) = 13 THEN DO:
    IF cRFC MATCHES "*[A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9][0-9][0-9]*"
    THEN VALID-RFC = TRUE.
END.

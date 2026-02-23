/* val-rfc.i — Validacion basica de RFC mexicano
   Uso: {src/main/i/val-rfc.i}
   Requiere: DEFINE VARIABLE cRFC AS CHARACTER.
   Resultado: DEFINE VARIABLE VALID-RFC AS LOGICAL.
*/

DEFINE VARIABLE VALID-RFC AS LOGICAL NO-UNDO INITIAL FALSE.

IF LENGTH(cRFC) = 12 OR LENGTH(cRFC) = 13 THEN DO:
    /* Persona moral: 3 letras + 6 digitos + 3 homoclave */
    /* Persona fisica: 4 letras + 6 digitos + 3 homoclave */
    IF cRFC MATCHES "*[A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9][0-9][0-9]*"
    THEN VALID-RFC = TRUE.
END.

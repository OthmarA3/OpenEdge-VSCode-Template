/* ej4-formato.i — Include: formatear nombre a Title Case */
DEFINE VARIABLE cFormato AS CHARACTER NO-UNDO.
cFormato = CAPS(SUBSTRING(cNombre, 1, 1))
         + LC(SUBSTRING(cNombre, 2)).

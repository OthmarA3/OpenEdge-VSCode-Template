/* ventana-principal.w — Ventana principal (legacy) */
DEFINE FRAME fMain
    "Sistema de Clientes" VIEW-AS TEXT
    WITH TITLE "Menu Principal" SIZE 40 BY 10.

ENABLE ALL WITH FRAME fMain.
WAIT-FOR CLOSE OF THIS-PROCEDURE.

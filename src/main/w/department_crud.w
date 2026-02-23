/* department_crud.w — CRUD para tabla Department (sports2000)
   Generado con GitHub Copilot + MCP Connector
   Ejecutar: Ctrl+Shift+P → "Tasks: Run Task" → "Run ABL GUI"
*/

DEFINE VARIABLE hQuery  AS HANDLE  NO-UNDO.
DEFINE VARIABLE hBrowse AS HANDLE  NO-UNDO.
DEFINE VARIABLE lOk     AS LOGICAL NO-UNDO.

/* --- Frame principal --- */
DEFINE FRAME fMain
    Department.DeptCode   LABEL "Codigo"
    Department.DeptName   LABEL "Nombre"
    WITH SIDE-LABELS 1 COLUMN.

DEFINE FRAME fBrowse
    Department.DeptCode   COLUMN-LABEL "Codigo"
    Department.DeptName   COLUMN-LABEL "Nombre"
    WITH 10 DOWN WIDTH 60.

/* --- Botones --- */
DEFINE BUTTON btnAdd    LABEL "Agregar".
DEFINE BUTTON btnSave   LABEL "Guardar".
DEFINE BUTTON btnDelete LABEL "Eliminar".
DEFINE BUTTON btnClose  LABEL "Cerrar".

DEFINE FRAME fButtons
    btnAdd btnSave btnDelete btnClose
    WITH 1 DOWN NO-BOX.

/* --- Logica principal --- */
OPEN QUERY hQuery FOR EACH Department NO-LOCK.

ON CHOOSE OF btnAdd DO:
    CREATE Department.
    ASSIGN
        Department.DeptCode = ""
        Department.DeptName = "".
    DISPLAY Department.DeptCode Department.DeptName
        WITH FRAME fMain.
    ENABLE Department.DeptCode Department.DeptName
        WITH FRAME fMain.
END.

ON CHOOSE OF btnSave DO:
    ASSIGN
        Department.DeptCode = INPUT FRAME fMain Department.DeptCode
        Department.DeptName = INPUT FRAME fMain Department.DeptName.
    MESSAGE "Registro guardado." VIEW-AS ALERT-BOX INFORMATION.
END.

ON CHOOSE OF btnDelete DO:
    IF AVAILABLE Department THEN DO:
        MESSAGE "Eliminar " Department.DeptName "?"
            VIEW-AS ALERT-BOX QUESTION BUTTONS YES-NO
            UPDATE lOk.
        IF lOk THEN DO:
            DELETE Department.
            MESSAGE "Registro eliminado." VIEW-AS ALERT-BOX INFORMATION.
        END.
    END.
END.

ON CHOOSE OF btnClose DO:
    APPLY "CLOSE" TO THIS-PROCEDURE.
END.

ENABLE ALL WITH FRAME fBrowse.
ENABLE ALL WITH FRAME fButtons.

WAIT-FOR CLOSE OF THIS-PROCEDURE.

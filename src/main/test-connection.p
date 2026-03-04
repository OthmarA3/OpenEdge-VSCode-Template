FIND FIRST Customer NO-LOCK NO-ERROR.
IF AVAILABLE Customer THEN
  MESSAGE "Conexion OK:" Customer.Name VIEW-AS ALERT-BOX.
ELSE
  MESSAGE "No se encontro la tabla Customer. Revisa tu conexion." VIEW-AS ALERT-BOX.

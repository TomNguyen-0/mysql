SET SERVEROUTPUT ON
VAR v deptbb02.dname%TYPE;  --cannot do this here
DECLARE
  v deptbb02.dname%type;
BEGIN
  v := getDnamebb02('lasorda');
  DBMS_OUTPUT.PUT_LINE(v);
END;
--PRINT v
.
/

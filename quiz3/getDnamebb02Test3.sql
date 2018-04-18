SET SERVEROUTPUT ON
-- VAR v deptbb02.dname%TYPE;   cannot do outside block
VARIABLE v VARCHAR2(8);
BEGIN
   :v := getDnamebb02('lasorda');
DBMS_OUTPUT.PUT_LINE(:v);
END;
/
PRINT v

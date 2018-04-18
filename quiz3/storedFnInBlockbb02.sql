spool storedFnInBlockbb02.dat
set serveroutput on
set echo on
set pages 100
DECLARE
  en empbb02.ename%TYPE;
  vdn deptbb02.dname%TYPE;
BEGIN  
  SELECT ename,getDnamebb02(ename)
  INTO en,vdn
  FROM empbb02
  WHERE ename = 'minoso';
  DBMS_OUTPUT.PUT_LINE(en||' works in the '||vdn||' department.');
END;
/

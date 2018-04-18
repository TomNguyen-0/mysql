-- A procedure can be invoked by   execute pack.proc(...), but because
-- a function has a return value, we need a syntax something like    
-- execute :bindvar := pack.foo(...) for a function foo
SET SERVEROUTPUT ON
DECLARE
v1 deptbb02.restaurant%TYPE;
v2 empbb02.ename%TYPE;
v3 deptbb02.location%TYPE;
BEGIN 
  SELECT ename,sixPack02.getRestbb02(ename),
       sixPack02.getRestLocbb02(ename) INTO v2,v1,v3
  FROM empbb02 WHERE ename = 'minoso';
  DBMS_OUTPUT.PUT_LINE ('The restaurant of choice for '||v2||
      ' is '||v1||' and location is '||v3||'.');
END;
/

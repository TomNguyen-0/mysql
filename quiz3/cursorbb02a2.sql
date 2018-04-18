-- explicit cursor, visible processing, cursor attributes
-- exhibits the fact that %ROWCOUNT tracks number of elements processed so far
-- in the active set;  this variation allows a fetch into a rowtype;  it is
-- thus referred to as a "cursor based record" approach----the name fits 
spool cursor1.dat
set echo on
set pages 100
set serveroutput on
DECLARE
  CURSOR emp_cursor IS
    SELECT empno,ename
    FROM empbb02;
  v_row emp_cursor%ROWTYPE;
BEGIN
  OPEN emp_cursor;
  LOOP
    FETCH emp_cursor INTO v_row;
    EXIT WHEN emp_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(v_row.ename||'  '||v_row.empno||' rowcount is '||
          emp_cursor%ROWCOUNT);
  END LOOP;
  CLOSE emp_cursor;
END;
/

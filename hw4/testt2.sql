set serveroutput on
declare avg1 number;
begin
	testt('minoso',avg1);
	dbms_output.put_line('something '|| avg1);
end;
.
/
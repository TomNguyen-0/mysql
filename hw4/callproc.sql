set serveroutput on
accept lastname prompt 'Enter Last Name> '
declare 
	avg1 number;
	era1 number;
	lastname varchar2(13) :='&lastname';
begin
	infostats(lastname,avg1,era1);
	dbms_output.put_line(lastname||' has an era of ' || nvl(era1,0) || ' and an average of ' || nvl(avg1,0));
end;
.
/

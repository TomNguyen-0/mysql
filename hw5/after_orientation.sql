	SET SERVEROUTPUT ON
	create or replace trigger after_orientation
		after insert on empbb02
		for each row
	begin
		insert into newhires values(:new.empno,:new.ename,:new.hiredate);
	end;
	/
	show errors
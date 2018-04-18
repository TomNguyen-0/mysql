set serveroutput on
	
variable avg1 number	
variable era1 number	
execute infostats('minoso',:avg1,:era1);
				
/
print avg1
print era1
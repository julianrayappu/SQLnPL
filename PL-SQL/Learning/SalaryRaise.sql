set serveroutput on;

create or replace
procedure SalaryRaise(employee_number in emp.empno%type, amount in emp.sal%type)
is
begin
 
  update EMP
  set SAL = SAL * (1.00 + amount/100)
  where EMPNO = employee_number;
  
  dbms_output.put_line('EmployeeNo ' || employee_number || ' given raise amount of ' || amount);
  
  commit;
end;
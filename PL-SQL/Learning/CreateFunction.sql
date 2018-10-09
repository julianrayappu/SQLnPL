create or replace function getSalary(employeeNumber emp.empNo%type) return number
as
  salary number := 0;
begin
  select sal into salary
  from emp
  where empNo = employeeNumber;
  
  if salary = 0 then
    dbms_output.put_line('salary is '|| salary || ' employeeNumber ' ||  employeeNumber || 'must not exist');
  end if;
  
  return salary;
exception
  when no_data_found then 
    dbms_output.put_line('No such customer!' || employeeNumber);
    return 0; -- // DO NOT FORGET TO RETURN SINCE FUNCTION
  when others then
    dbms_output.put_line('Error!');
    return 0; -- // DO NOT FORGET TO RETURN SINCE FUNCTION
end;

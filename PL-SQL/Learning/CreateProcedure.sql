create or replace procedure UpdateJob(employeeNumber number)
as
  -- declare section does not need DECLARE keyword in procedure or function
  raise_amount number:= 500;
begin
  update emp
  set sal = sal + raise_amount
  where empNo = employeeNumber;
end;
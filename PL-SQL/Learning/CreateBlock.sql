DECLARE
  increment_amount number:= 10;
  employee_no number:=7369;
BEGIN
  -- call update_employees to increment the salary
  update_employees(employee_no, increment_amount);
  commit;
END;
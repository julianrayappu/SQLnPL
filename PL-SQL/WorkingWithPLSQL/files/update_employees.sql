create or replace
PROCEDURE update_employees(id IN  EMP.EMPNO%TYPE, percent IN  NUMBER)
IS
BEGIN
  UPDATE emp
  SET    sal = sal * (1 + percent/100)
  WHERE  empno = id;
  DBMS_OUTPUT.PUT_LINE('Salary incremented for employee_id:'||id);
  COMMIT;
END update_employees;



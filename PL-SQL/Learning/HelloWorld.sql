set serveroutput on;

DECLARE
  message varchar2(20) := 'Hello, World!';
  new_salary number(8,2) DEFAULT 5000;
  d2 number default -1;
  cons constant number := 99;
  ack boolean := TRUE;
  tmrw date := DATE'2018-07-16';
  morning timestamp := TIMESTAMP'2018-07-16 06:12:48';
  amount number;
BEGIN
  ack := false;
  dbms_output.put_line('tmrw is ' || tmrw);
  dbms_output.put_line('morning is ' || morning);
  dbms_output.put_line('morning is ' || to_char(morning, 'YYYY-MM-DD HH24:MI:SS'));
  
  dbms_output.put_line('cons is ' || cons);
  --cons := cons * 2; -- compile error
  --dbms_output.put_line('cons is ' || cons);
  
  
  dbms_output.put_line(message);
  dbms_output.put_line('Default new_salary is ' || new_salary);
  
  new_salary := new_salary * 1.1;
  dbms_output.put_line('Modified new_salary is ' || new_salary);
  
  d2 := 59/6;
  dbms_output.put_line('d2 is ' || d2);
  
  amount := GetSalary(7934);
  dbms_output.put_line('Amount for 7934 is ' || amount);

  amount := GetSalary(7999);
  dbms_output.put_line('Amount for 7999 is ' || amount);

  -- give employee id 7499 a 10% salary raise
  -- and see the output
  --SalaryRaise(7499, 10);
END;
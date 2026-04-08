CREATE TABLE employees (
    employee_id NUMBER(6),
    last_name   VARCHAR2(25),
    job_id      VARCHAR2(10),
    salary      NUMBER(8,2)
);

INSERT ALL
    INTO employees (employee_id, last_name, job_id, salary) VALUES (141, 'Nayer',       'ST_CLERK', 3200)
    INTO employees (employee_id, last_name, job_id, salary) VALUES (142, 'Mikkilineni', 'ST_CLERK', 2700)
    INTO employees (employee_id, last_name, job_id, salary) VALUES (143, 'Olson',       'ST_CLERK', 2600)
    INTO employees (employee_id, last_name, job_id, salary) VALUES (144, 'Bissot',      'ST_CLERK', 3300)
    INTO employees (employee_id, last_name, job_id, salary) VALUES (145, 'Atkinson',    'ST_CLERK', 2800)
    INTO employees (employee_id, last_name, job_id, salary) VALUES (146, 'Mallin',      'ST_CLERK', 3300)
    INTO employees (employee_id, last_name, job_id, salary) VALUES (147, 'Rogers',      'ST_CLERK', 2900)
    INTO employees (employee_id, last_name, job_id, salary) VALUES (148, 'Ladwig',      'ST_CLERK', 3600)
    INTO employees (employee_id, last_name, job_id, salary) VALUES (149, 'Stiles',      'ST_CLERK', 3200)
    INTO employees (employee_id, last_name, job_id, salary) VALUES (150, 'Seo',         'ST_CLERK', 2700)
    INTO employees (employee_id, last_name, job_id, salary) VALUES (151, 'Rajs',        'ST_CLERK', 3500)
    INTO employees (employee_id, last_name, job_id, salary) VALUES (152, 'Davies',      'ST_CLERK', 3100)
SELECT * FROM dual;

COMMIT;

SELECT * FROM employees;

SELECT last_name, job_id, salary, employee_id
FROM employees
WHERE job_id =
    (SELECT job_id
    FROM employees
    WHERE employee_id =141)
    AND salary >
        (SELECT salary
        FROM employees
        WHERE employee_id = 147);
        
SELECT * FROM employees
order by salary asc;

SELECT last_name, job_id, salary, employee_id
FROM employees
WHERE salary =
    (SELECT MIN(salary)
    FROM employees);
    
ALTER TABLE employees ADD department_id NUMBER(4);

UPDATE employees SET department_id = 50  WHERE employee_id IN (141,142,143,144,145);
UPDATE employees SET department_id = 60  WHERE employee_id IN (146,147,148);
UPDATE employees SET department_id = 80  WHERE employee_id IN (149,150,151,152);

SELECT department_id, MIN(salary)
FROM employees
GROUP BY department_id
HAVING MIN(salary) >
    (SELECT MIN(salary)
    FROM employees
    WHERE department_id = 50);
    
SELECT last_name, salary, department_id
FROM employees
WHERE salary IN
    (SELECT MIN(salary)
    FROM employees
    GROUP BY department_id);

commit;

SELECT last_name, salary, employee_id
FROM employees
WHERE salary = ANY (
    SELECT salary
    FROM employees
    WHERE employee_id IN (143, 145));
    
SELECT employee_id, last_name, salary
FROM employees
WHERE salary < ALL (
    SELECT salary
    FROM employees
    WHERE last_name IN('Bissot', 'Atkinson'));
    
SELECT employee_id, last_name, salary
FROM employees
WHERE (job_id, salary) IN (
    SELECT job_id, salary
    FROM employees
    WHERE employee_id IN(141,144))
    
AND employee_id NOT IN (141,144);

CREATE TABLE emp_high_salary AS
SELECT employee_id, last_name, salary
FROM employees
WHERE salary > 3000;

CREATE TABLE employees_backup AS
SELECT * FROM employees
WHERE 1 = 2;

INSERT INTO employees_backup
SELECT * FROM employees;

SELECT * FROM employees_backup;

commit;

UPDATE employees_backup          -- 1. Menentukan tabel target yang datanya akan diubah (tabel backup).
SET job_id = (                   -- 2. Mengubah nilai di kolom job_id...
        SELECT job_id            -- 3. (Subquery 1) ...dengan mengambil informasi job_id dari tabel utama 'employees'...
        FROM employees           
        WHERE employee_id = 143  -- 4. ...khusus milik pegawai ber-ID 143 (Olson).
    ),
    salary = (                   -- 5. Mengubah nilai di kolom salary...
        SELECT salary            -- 6. (Subquery 2) ...dengan mengambil informasi salary dari tabel utama 'employees'...
        FROM employees           
        WHERE employee_id = 143  -- 7. ...juga milik pegawai ber-ID 143 (Olson).
    )
WHERE employee_id = 146;

DELETE FROM employees_backup
WHERE employee_id IN (
    SELECT employee_id
    FROM employees
    WHERE salary < 3000);
    
SELECT * FROM employees;
SELECT * FROM employees_backup;   

commit;
    
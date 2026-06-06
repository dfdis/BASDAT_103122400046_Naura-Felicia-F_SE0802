SET SERVEROUTPUT ON;
SET SERVEROUTPUT OFF;

--PROCEDURE

CREATE OR REPLACE PROCEDURE cetak AS
    d VARCHAR2(50);
    
BEGIN
    d := q'(coba lagi)';
    DBMS_OUTPUT.PUT_LINE(d);
END;
/

EXECUTE cetak;


CREATE OR REPLACE PROCEDURE sapa (nama IN VARCHAR2) AS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Halo, ' || nama || '!');
END;
/

EXEC sapa('Budi');
EXEC sapa('Siti');


CREATE OR REPLACE PROCEDURE hitung_luas_persegi(
    sisi    IN NUMBER,
    luas    OUT NUMBER
) AS
BEGIN
    luas := sisi * sisi;
END;
/

DECLARE
    hasil NUMBER;
BEGIN
    hitung_luas_persegi(7,hasil);
    DBMS_OUTPUT.PUT_LINE('luas persegi sisi 7 = ' || hasil);
END;
/


CREATE OR REPLACE PROCEDURE format_phone
    (phone_num IN OUT VARCHAR2) IS
BEGIN
    phone_num := '(' || SUBSTR(phone_num, 1, 3) || ')' ||
    SUBSTR(phone_num, 4, 3) || '-' ||
    SUBSTR(phone_num, 7);
END format_phone;
/

DECLARE
    phone VARCHAR2(21) := '234234ASDA';
BEGIN
    format_phone (phone);
    DBMS_OUTPUT.PUT_LINE(phone);
END;
/


CREATE OR REPLACE PROCEDURE add_dept (
    name    IN VARCHAR2,
    loc     IN NUMBER
) AS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Dept: ' || name || ', Loc: ' || loc);
END;
/

--positional
EXECUTE add_dept('EDUCATION', 2400);
--Named
EXECUTE add_dept(loc=>2400, name=>'EDUCATION');
--combination
EXECUTE add_dept('EDUCATION', loc=>2400);


CREATE OR REPLACE PROCEDURE cetak_angka (x IN INTEGER) AS
    j INTEGER;
BEGIN
    FOR j IN 1..x LOOP
        DBMS_OUTPUT.PUT_LINE(TO_CHAR(J));
    END LOOP;
END;
/

CREATE OR REPLACE PROCEDURE panggil AS
BEGIN
    cetak_angka(5);
END;
/

EXECUTE panggil;
EXECUTE cetak_angka(6);


--FUNCTION
CREATE OR REPLACE FUNCTION tulis
RETURN VARCHAR2 AS
BEGIN
    RETURN 'Hello world';
END;
/

SELECT tulis FROM dual;
EXECUTE DBMS_OUTPUT.PUT_LINE(tulis);
SQL> CREATE TABLE film (
  2  Id_film NUMBER PRIMARY KEY
  3  , judul VARCHAR2(100),
  4  sinopsis VARCHAR2(500),
  5  tahun NUMBER,
  6  durasi NUMBER
  7  );

Table created.

SQL> CREATE TABLE Theater(
  2  id_theater INT PRIMARY kEy,
  3  ;

*
ERROR at line 3:
ORA-00904: : invalid identifier 


SQL> CREATE TABLE theater(
  2  id_theater INT PRIMARY KEY,
  3  harga INT,
  4  kapasitas INT,
  5  kelas VARCHAR(50)
  6  );

Table created.

SQL> CREATE TABLE Inventaris (
  2  id_inventaris INT PRIMARY KEY,
  3  id_theater INT,
  4  nomor_kursi VARCHAR(10),
  5  FOREIGN KEY (id_theater) REFERENCES theater(id_theater)
  6  );

Table created.

SQL> CREATE TABLE jadwal (
  2  ;

*
ERROR at line 2:
ORA-00904: : invalid identifier 


SQL> CREATE TABLE Jadwal (
  2  id_jadwal INT PRIMARY KEY,
  3  id_film INT,
  4  id_theater INT,
  5  periode_start DATETIME,
  6  periode_end DATETIME,
  7  FOREIGN KEY (id_film) REFERENCES film(id_film),
  8  FOREIGN KEY (id_theater) REFERENCES theater(id_theater)
  9  );
periode_start DATETIME,
              *
ERROR at line 5:
ORA-00902: invalid datatype 


SQL> CREATE TABLE Jadwal (
  2  id_jadwal INT PRIMARY KEY,
  3  id_film INT,
  4  id_theater INT,
  5  periode_start DATE,
  6  periode_end DATE,
  7  FOREIGN KEY (id_film) REFERENCES film(id_film),
  8  FOREIGN KEY (id_theater) REFERENCES theater(id_theater)
  9  );

Table created.

SQL> CREATE TABLE member (
  2  id_member INT PRIMARY KEY,
  3  nama VARCHAR(100),
  4  no_hp VARCHAR(15),
  5  tgl_lahir DATE,
  6  email VARCHAR(100)
  7  );

Table created.

SQL> CREATE TABLE transaksi (
  2  kode_pemesanan INT PRIMARY KEY,
  3  id_jadwal INT,
  4  id_member INT,
  5  status VARCHAR(50),
  6  tanggal DATE,
  7  total_harga INT,
  8  FOREIGN KEY (id_jadwal) REFERENCES Jadwal(id_jadwal),
  9  FOREIGN KEY (id_member) REFERENCES member(id_member)
 10  );

Table created.

SQL> --2
SQL> INSERT INTO film VALUES (1,'Avengers','Film superhero marvel',2019,180);

1 row created.

SQL> INSERT INTO Film VALUES (2,'Inception','Film mimpi berlapis',2010,148);;
INSERT INTO Film VALUES (2,'Inception','Film mimpi berlapis',2010,148);
                                                                      *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> INSERT INTO Film VALUES (2,'Inception','Film mimpi berlapis',2010,148);

1 row created.

SQL> SELECT * FROM film;

   ID_FILM                                                                      
----------                                                                      
JUDUL                                                                           
--------------------------------------------------------------------------------
SINOPSIS                                                                        
--------------------------------------------------------------------------------
     TAHUN     DURASI                                                           
---------- ----------                                                           
         1                                                                      
Avengers                                                                        
Film superhero marvel                                                           
      2019        180                                                           
                                                                                

   ID_FILM                                                                      
----------                                                                      
JUDUL                                                                           
--------------------------------------------------------------------------------
SINOPSIS                                                                        
--------------------------------------------------------------------------------
     TAHUN     DURASI                                                           
---------- ----------                                                           
         2                                                                      
Inception                                                                       
Film mimpi berlapis                                                             
      2010        148                                                           
                                                                                

SQL> SELECT * FROM Theater;

no rows selected

SQL> INSERT INTO theater VALUES (1,'50000',100,'Regular');

1 row created.

SQL> INSERT INTO theater VALUES (2,'75000',80,'VIP');

1 row created.

SQL> SELECT * FROM Theater;

ID_THEATER      HARGA  KAPASITAS                                                
---------- ---------- ----------                                                
KELAS                                                                           
--------------------------------------------------                              
         1      50000        100                                                
Regular                                                                         
                                                                                
         2      75000         80                                                
VIP                                                                             
                                                                                

SQL> INSERT INTO inventaris VALUES (1,1,'A1');

1 row created.

SQL> INSERT INTO inventaris VALUES (2,1,'A2');

1 row created.

SQL> SELECT * FROM inventaris;

ID_INVENTARIS ID_THEATER NOMOR_KURS                                             
------------- ---------- ----------                                             
            1          1 A1                                                     
            2          1 A2                                                     

SQL> INSERT INTO Jadwal VALUES (1,
  2    2  1,
  3    3  1,
  4    4  TO_DATE('2026-03-15 10:00:00','YYYY-MM-DD HH24:MI:SS'),
  5    5  TO_DATE('2026-03-15 13:00:00','YYYY-MM-DD HH24:MI:SS')
  6    6  );
  2  1,
     *
ERROR at line 2:
ORA-00917: missing comma 


SQL> INSERT INTO Jadwal VALUES (1,
  2    2  1,
  3    3  1,
  4    4  TO_DATE('2026-03-15 10:00:00','YYYY-MM-DD HH24:MI:SS'),
  5    5  TO_DATE('2026-03-15 13:00:00','YYYY-MM-DD HH24:MI:SS')
  6    6  );;
  2  1,
     *
ERROR at line 2:
ORA-00917: missing comma 


SQL> 1,
SP2-0042: unknown command "1," - rest of line ignored.
SQL> INSERT INTO jadwal VALUES (1,
  2  1,
  3  1,
  4  TO_DATE('2026-03-15 10:00:00','YYYY-MM-DD HH24:MI:SS'),
  5  TO_DATE('2026-03-15 13:00:00','YYYY-MM-DD HH24:MI:SS')
  6  );

1 row created.

SQL> INSERT INTO jadwal VALUES (2,
  2  2,
  3  2,
  4  TO_DATE('2026-03-16 14:00:00','YYYY-MM-DD HH24:MI:SS'),
  5  TO_DATE('2026-03-16 16:00:00','YYYY-MM-DD HH24:MI:SS')
  6  );

1 row created.

SQL> SELECT * FROM jadwal;

 ID_JADWAL    ID_FILM ID_THEATER PERIODE_S PERIODE_E                            
---------- ---------- ---------- --------- ---------                            
         1          1          1 15-MAR-26 15-MAR-26                            
         2          2          2 16-MAR-26 16-MAR-26                            

SQL> INSERT INTO member VALUES (1,
  2  'Cia',
  3  '081562735571',
  4  TO_DATE('2000-05-10','YYYY-MM-DD'),
  5  'cia@gmail.com'
  6  );

1 row created.

SQL> INSERT INTO member VALUES (2,
  2  'Mona',
  3  '0982166358',
  4  TO_DATE('2001-08-20','YYYY-MM-DD'),
  5  'mona@gmail.com'
  6  );

1 row created.

SQL> SELECT * FROM member;

 ID_MEMBER                                                                      
----------                                                                      
NAMA                                                                            
--------------------------------------------------------------------------------
NO_HP           TGL_LAHIR                                                       
--------------- ---------                                                       
EMAIL                                                                           
--------------------------------------------------------------------------------
         1                                                                      
Cia                                                                             
081562735571    10-MAY-00                                                       
cia@gmail.com                                                                   
                                                                                

 ID_MEMBER                                                                      
----------                                                                      
NAMA                                                                            
--------------------------------------------------------------------------------
NO_HP           TGL_LAHIR                                                       
--------------- ---------                                                       
EMAIL                                                                           
--------------------------------------------------------------------------------
         2                                                                      
Mona                                                                            
0982166358      20-AUG-01                                                       
mona@gmail.com                                                                  
                                                                                

SQL> INSERT INTO transaksi VALUES (1,1,1,'Lunas',
  2  TO_DATE('2026-03-11','YYYY-MM-DD'),
  3  50000);

1 row created.

SQL> INSERT INTO transaksi VALUES (2,2,2,'pending',
  2  TO_DATE('2026-03-11','YYYY-MM-DD'),
  3  75000);

1 row created.

SQL> SELECT * FROM transaksi;

KODE_PEMESANAN  ID_JADWAL  ID_MEMBER                                            
-------------- ---------- ----------                                            
STATUS                                             TANGGAL   TOTAL_HARGA        
-------------------------------------------------- --------- -----------        
             1          1          1                                            
Lunas                                              11-MAR-26       50000        
                                                                                
             2          2          2                                            
pending                                            11-MAR-26       75000        
                                                                                

SQL> --3 UPDATE min 5
SQL> UPDATE film
  2  SET durasi = 185
  3  WHERE id_film = 1;

1 row updated.

SQL> SELECT * FROM tfilm;
SELECT * FROM tfilm
              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> SELECT * FROM film;

   ID_FILM                                                                      
----------                                                                      
JUDUL                                                                           
--------------------------------------------------------------------------------
SINOPSIS                                                                        
--------------------------------------------------------------------------------
     TAHUN     DURASI                                                           
---------- ----------                                                           
         1                                                                      
Avengers                                                                        
Film superhero marvel                                                           
      2019        185                                                           
                                                                                

   ID_FILM                                                                      
----------                                                                      
JUDUL                                                                           
--------------------------------------------------------------------------------
SINOPSIS                                                                        
--------------------------------------------------------------------------------
     TAHUN     DURASI                                                           
---------- ----------                                                           
         2                                                                      
Inception                                                                       
Film mimpi berlapis                                                             
      2010        148                                                           
                                                                                

SQL> UPDATE theater
  2  SET harga = 55000
  3  Where id_theater = 1;

1 row updated.

SQL> SELECT * FROM theater;

ID_THEATER      HARGA  KAPASITAS                                                
---------- ---------- ----------                                                
KELAS                                                                           
--------------------------------------------------                              
         1      55000        100                                                
Regular                                                                         
                                                                                
         2      75000         80                                                
VIP                                                                             
                                                                                

SQL> UPDATE MEMBER
  2  SET no_hp = '086767677676'
  3  WHERE id_member = '1';

1 row updated.

SQL> SELECT * FROM member;

 ID_MEMBER                                                                      
----------                                                                      
NAMA                                                                            
--------------------------------------------------------------------------------
NO_HP           TGL_LAHIR                                                       
--------------- ---------                                                       
EMAIL                                                                           
--------------------------------------------------------------------------------
         1                                                                      
Cia                                                                             
086767677676    10-MAY-00                                                       
cia@gmail.com                                                                   
                                                                                

 ID_MEMBER                                                                      
----------                                                                      
NAMA                                                                            
--------------------------------------------------------------------------------
NO_HP           TGL_LAHIR                                                       
--------------- ---------                                                       
EMAIL                                                                           
--------------------------------------------------------------------------------
         2                                                                      
Mona                                                                            
0982166358      20-AUG-01                                                       
mona@gmail.com                                                                  
                                                                                

SQL> UPDATE jadwal
  2  SET periode start = ''2026-03-15 11:00:00;
SP2-0552: Bind variable "00" not declared.
SQL> UPDATE jadwal
  2  SET periode_start = '2026-03-15 11:00:00'
  3  WHERE id_jadwal = 1;
SET periode_start = '2026-03-15 11:00:00'
                    *
ERROR at line 2:
ORA-01861: literal does not match format string 


SQL> UPDATE Jadwal
  2  SET periode_start = '2026-03-15 11:00:00'
  3  WHERE id_jadwal = 1;
SET periode_start = '2026-03-15 11:00:00'
                    *
ERROR at line 2:
ORA-01861: literal does not match format string 


SQL> UPDATE Jadwal
  2  SET periode_start = TO_DATE('2026-03-15 11:00:00','YYYY-MM-DD HH24:MI:SS')
  3  WHERE id_jadwal = 1;

1 row updated.

SQL> SELECT * FROM jadwal;

 ID_JADWAL    ID_FILM ID_THEATER PERIODE_S PERIODE_E                            
---------- ---------- ---------- --------- ---------                            
         1          1          1 15-MAR-26 15-MAR-26                            
         2          2          2 16-MAR-26 16-MAR-26                            

SQL> UPDATE Transaksi
  2  SET status = 'Lunas'
  3  WHERE kode_pemesanan = 2;

1 row updated.

SQL> SELECT * FROM transaksi;

KODE_PEMESANAN  ID_JADWAL  ID_MEMBER                                            
-------------- ---------- ----------                                            
STATUS                                             TANGGAL   TOTAL_HARGA        
-------------------------------------------------- --------- -----------        
             1          1          1                                            
Lunas                                              11-MAR-26       50000        
                                                                                
             2          2          2                                            
Lunas                                              11-MAR-26       75000        
                                                                                

SQL> --4 DELETE min 2
SQL> DELETE FROM Inventaris
  2  WHERE id_inventaris = 2;

1 row deleted.

SQL> SELECT * FROM inventaris;

ID_INVENTARIS ID_THEATER NOMOR_KURS                                             
------------- ---------- ----------                                             
            1          1 A1                                                     

SQL> DELETE FROM Member
  2  WHERE id_member = 2;
DELETE FROM Member
*
ERROR at line 1:
ORA-02292: integrity constraint (SYSTEM.SYS_C008325) violated - child record 
found 


SQL> W
SP2-0042: unknown command "W" - rest of line ignored.
SQL> DELETE FROM Member
  2  WHERE id_member = 2;
DELETE FROM Member
*
ERROR at line 1:
ORA-02292: integrity constraint (SYSTEM.SYS_C008325) violated - child record 
found 


SQL> DELETE FROM Transaksi
  2  WHERE id_member = 2;

1 row deleted.

SQL> SELECT * FROM Transaksi;

KODE_PEMESANAN  ID_JADWAL  ID_MEMBER                                            
-------------- ---------- ----------                                            
STATUS                                             TANGGAL   TOTAL_HARGA        
-------------------------------------------------- --------- -----------        
             1          1          1                                            
Lunas                                              11-MAR-26       50000        
                                                                                

SQL> SPOOL OFF
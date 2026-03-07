SQL> --nama : Naura Felicia Fatliaskamto
SQL> --nim : 103122400046
SQL> CREATE TABLE film_marvel (Id_Film VARCHAR2(5)
  2  Judul_Film VARCHAR2(100)
  3  Tahun_rilis NUMBER
  4  Tokoh_utama VARCHAR2(100));
Judul_Film VARCHAR2(100)
*
ERROR at line 2:
ORA-00907: missing right parenthesis 


SQL> CREATE TABLE film_marvel (id_film VARCHAR2(5),
  2  Judul_film VARCHAR2(100),
  3  tahun_rilis NUMBER,
  4  tokoh_utama VARCHAR2(100)
  5  );

Table created.

SQL> --insert DML
SQL> INSERT INTO film_marvel VALUES ('M001', 'Iron Man', 2008, 'Tony Stark');

1 row created.

SQL> DESC film_marvel;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_FILM                                            VARCHAR2(5)
 JUDUL_FILM                                         VARCHAR2(100)
 TAHUN_RILIS                                        NUMBER
 TOKOH_UTAMA                                        VARCHAR2(100)

SQL> SELECT * FROM film_marvel;

ID_FI                                                                           
-----                                                                           
JUDUL_FILM                                                                      
--------------------------------------------------------------------------------
TAHUN_RILIS                                                                     
-----------                                                                     
TOKOH_UTAMA                                                                     
--------------------------------------------------------------------------------
M001                                                                            
Iron Man                                                                        
       2008                                                                     
Tony Stark                                                                      
                                                                                

SQL> INSERT INTO film_marvel VALUES ('M002', 'Captain America: The First Avenger', 2011, 'Steve Rogers');

1 row created.

SQL> INSERT INTO film_marvel VALUES ('M003', 'Thor', 2011, 'Thor');

1 row created.

SQL> INSERT INTO film_marvel VALUES ('M003', 'The Avengers', 2012, 'Avengers');

1 row created.

SQL> INSERT INTO film_marvel VALUES ('M005', 'Spider-Man: No Way Home', 2021, 'Peter Parker');

1 row created.

SQL> SELECT * FROM film_marvel;

ID_FI                                                                           
-----                                                                           
JUDUL_FILM                                                                      
--------------------------------------------------------------------------------
TAHUN_RILIS                                                                     
-----------                                                                     
TOKOH_UTAMA                                                                     
--------------------------------------------------------------------------------
M001                                                                            
Iron Man                                                                        
       2008                                                                     
Tony Stark                                                                      
                                                                                

ID_FI                                                                           
-----                                                                           
JUDUL_FILM                                                                      
--------------------------------------------------------------------------------
TAHUN_RILIS                                                                     
-----------                                                                     
TOKOH_UTAMA                                                                     
--------------------------------------------------------------------------------
M002                                                                            
Captain America: The First Avenger                                              
       2011                                                                     
Steve Rogers                                                                    
                                                                                

ID_FI                                                                           
-----                                                                           
JUDUL_FILM                                                                      
--------------------------------------------------------------------------------
TAHUN_RILIS                                                                     
-----------                                                                     
TOKOH_UTAMA                                                                     
--------------------------------------------------------------------------------
M003                                                                            
Thor                                                                            
       2011                                                                     
Thor                                                                            
                                                                                

ID_FI                                                                           
-----                                                                           
JUDUL_FILM                                                                      
--------------------------------------------------------------------------------
TAHUN_RILIS                                                                     
-----------                                                                     
TOKOH_UTAMA                                                                     
--------------------------------------------------------------------------------
M003                                                                            
The Avengers                                                                    
       2012                                                                     
Avengers                                                                        
                                                                                

ID_FI                                                                           
-----                                                                           
JUDUL_FILM                                                                      
--------------------------------------------------------------------------------
TAHUN_RILIS                                                                     
-----------                                                                     
TOKOH_UTAMA                                                                     
--------------------------------------------------------------------------------
M005                                                                            
Spider-Man: No Way Home                                                         
       2021                                                                     
Peter Parker                                                                    
                                                                                

SQL> SELECT film_marvel From user_tables;
SELECT film_marvel From user_tables
       *
ERROR at line 1:
ORA-00904: "FILM_MARVEL": invalid identifier 


SQL> TRUNCATE TABLE film_marvel
  2  ;

Table truncated.

SQL> select film_marvel;
select film_marvel
                 *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> DESC film_marvel;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_FILM                                            VARCHAR2(5)
 JUDUL_FILM                                         VARCHAR2(100)
 TAHUN_RILIS                                        NUMBER
 TOKOH_UTAMA                                        VARCHAR2(100)

SQL> INSERT INTO film_marvel VALUES ('M001', 'Iron Man', 2008, 'Tony Stark');

1 row created.

SQL> INSERT INTO film_marvel VALUES ('M002', 'Captain America: The First Avenger', 2011, 'Steve Rogers');

1 row created.

SQL> INSERT INTO film_marvel VALUES ('M003', 'Thor', 2011, 'Thor');

1 row created.

SQL> INSERT INTO film_marvel VALUES ('M004', 'The Avengers', 2012, 'Avengers');

1 row created.

SQL> INSERT INTO film_marvel VALUES ('M005', 'Black Panther', 2018, 'T''Challa');

1 row created.

SQL> INSERT INTO film_marvel VALUES ('M006', 'Spider-Man: No Way Home', 2021, 'Peter Parker');

1 row created.

SQL> SELECT film_marvel From user_tables;
SELECT film_marvel From user_tables
       *
ERROR at line 1:
ORA-00904: "FILM_MARVEL": invalid identifier 


SQL> SELECT * FROM film_marvel;

ID_FI                                                                           
-----                                                                           
JUDUL_FILM                                                                      
--------------------------------------------------------------------------------
TAHUN_RILIS                                                                     
-----------                                                                     
TOKOH_UTAMA                                                                     
--------------------------------------------------------------------------------
M001                                                                            
Iron Man                                                                        
       2008                                                                     
Tony Stark                                                                      
                                                                                

ID_FI                                                                           
-----                                                                           
JUDUL_FILM                                                                      
--------------------------------------------------------------------------------
TAHUN_RILIS                                                                     
-----------                                                                     
TOKOH_UTAMA                                                                     
--------------------------------------------------------------------------------
M002                                                                            
Captain America: The First Avenger                                              
       2011                                                                     
Steve Rogers                                                                    
                                                                                

ID_FI                                                                           
-----                                                                           
JUDUL_FILM                                                                      
--------------------------------------------------------------------------------
TAHUN_RILIS                                                                     
-----------                                                                     
TOKOH_UTAMA                                                                     
--------------------------------------------------------------------------------
M003                                                                            
Thor                                                                            
       2011                                                                     
Thor                                                                            
                                                                                

ID_FI                                                                           
-----                                                                           
JUDUL_FILM                                                                      
--------------------------------------------------------------------------------
TAHUN_RILIS                                                                     
-----------                                                                     
TOKOH_UTAMA                                                                     
--------------------------------------------------------------------------------
M004                                                                            
The Avengers                                                                    
       2012                                                                     
Avengers                                                                        
                                                                                

ID_FI                                                                           
-----                                                                           
JUDUL_FILM                                                                      
--------------------------------------------------------------------------------
TAHUN_RILIS                                                                     
-----------                                                                     
TOKOH_UTAMA                                                                     
--------------------------------------------------------------------------------
M005                                                                            
Black Panther                                                                   
       2018                                                                     
T'Challa                                                                        
                                                                                

ID_FI                                                                           
-----                                                                           
JUDUL_FILM                                                                      
--------------------------------------------------------------------------------
TAHUN_RILIS                                                                     
-----------                                                                     
TOKOH_UTAMA                                                                     
--------------------------------------------------------------------------------
M006                                                                            
Spider-Man: No Way Home                                                         
       2021                                                                     
Peter Parker                                                                    
                                                                                

6 rows selected.

SQL> --view
SQL> CREATE VIEW Film_marvel_favorit AS SELECT judul_film,
  2  tahun_rilis FROM film_marvel;

View created.

SQL> SELECT * FROM film_marvel_favorit
  2  ;

JUDUL_FILM                                                                      
--------------------------------------------------------------------------------
TAHUN_RILIS                                                                     
-----------                                                                     
Iron Man                                                                        
       2008                                                                     
                                                                                
Captain America: The First Avenger                                              
       2011                                                                     
                                                                                
Thor                                                                            
       2011                                                                     
                                                                                

JUDUL_FILM                                                                      
--------------------------------------------------------------------------------
TAHUN_RILIS                                                                     
-----------                                                                     
The Avengers                                                                    
       2012                                                                     
                                                                                
Black Panther                                                                   
       2018                                                                     
                                                                                
Spider-Man: No Way Home                                                         
       2021                                                                     
                                                                                

6 rows selected.

SQL> SPOOL OFF

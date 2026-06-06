CREATE TABLE kebun_sawit (
    id_kebun VARCHAR2(10),
    nama_petani VARCHAR2(100),
    luas_lahan NUMBER,
    jumlah_pohon NUMBER,
    tahun_tanam NUMBER
);

desc kebun_sawit;

INSERT INTO kebun_sawit (id_kebun, nama_petani, luas_lahan, jumlah_pohon, tahun_tanam) 
VALUES ('KBN-001', 'Budi Santoso', 15.5, 2000, 2015);
INSERT INTO kebun_sawit (id_kebun, nama_petani, luas_lahan, jumlah_pohon, tahun_tanam) 
VALUES ('KBN-002', 'Siti Aminah', 10.0, 1300, 2018);
INSERT INTO kebun_sawit (id_kebun, nama_petani, luas_lahan, jumlah_pohon, tahun_tanam) 
VALUES ('KBN-003', 'Ahmad Dahlan', 25.2, 3200, 2010);
INSERT INTO kebun_sawit (id_kebun, nama_petani, luas_lahan, jumlah_pohon, tahun_tanam) 
VALUES ('KBN-004', 'Wahyu Hidayat', 12.0, 1500, 2019);
INSERT INTO kebun_sawit (id_kebun, nama_petani, luas_lahan, jumlah_pohon, tahun_tanam) 
VALUES ('KBN-005', 'Ratna Sari', 8.5, 1100, 2020);
INSERT INTO kebun_sawit (id_kebun, nama_petani, luas_lahan, jumlah_pohon, tahun_tanam) 
VALUES ('KBN-006', 'Agus Prayitno', 30.0, 3900, 2008);
INSERT INTO kebun_sawit (id_kebun, nama_petani, luas_lahan, jumlah_pohon, tahun_tanam) 
VALUES ('KBN-007', 'Dewi Lestari', 18.3, 2300, 2016);
INSERT INTO kebun_sawit (id_kebun, nama_petani, luas_lahan, jumlah_pohon, tahun_tanam) 
VALUES ('KBN-008', 'Rudi Hermawan', 5.0, 650, 2022);
INSERT INTO kebun_sawit (id_kebun, nama_petani, luas_lahan, jumlah_pohon, tahun_tanam) 
VALUES ('KBN-009', 'Hendra Setiawan', 22.1, 2800, 2012);
INSERT INTO kebun_sawit (id_kebun, nama_petani, luas_lahan, jumlah_pohon, tahun_tanam) 
VALUES ('KBN-010', 'Joko Widodo', 14.8, 1900, 2017);

SELECT table_name, num_rows, blocks, empty_blocks
FROM user_tables
WHERE table_name = 'KEBUN_SAWIT';

ANALYZE TABLE kebun_sawit COMPUTE STATISTICS;
ANALYZE TABLE kebun_sawit DELETE STATISTICS;
ANALYZE TABLE kebun_sawit ESTIMATE STATISTICS;




    
    
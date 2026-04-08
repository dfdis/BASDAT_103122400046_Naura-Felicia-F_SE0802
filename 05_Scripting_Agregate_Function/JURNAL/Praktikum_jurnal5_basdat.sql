SELECT
    j.id_theater AS nomor_teater,
    f.judul AS judul_film,
    COUNT(t.kode_pemesanan) * th.harga AS total_pendapatan
FROM transaksi t
JOIN jadwal j ON t.id_jadwal = j.id_jadwal
JOIN film f ON j.id_film = f.id_film
JOIN theater th ON j.id_theater = th.id_theater
GROUP BY j.id_theater, f.judul, th.harga
HAVING COUNT(t.kode_pemesanan) * th.harga > 150000;

SELECT
    f.judul,
    COUNT(*) AS total_tiket_terjual
FROM transaksi t
JOIN jadwal j ON t.id_jadwal = j.id_jadwal
JOIN film f ON j.id_film = f.id_film
GROUP BY f.judul
ORDER BY total_tiket_terjual DESC
FETCH FIRST 1 ROW ONLY;

SELECT
    t.id_theater,
    AVG(t.harga) AS rata_rata_pendapatan
FROM theater t
GROUP BY t.id_theater;

SELECT
    f.judul,
    j.id_theater,
    COUNT(*) AS jumlah_diputar
FROM jadwal j
JOIN film f ON j.id_film = f.id_film
WHERE f.judul = 'Habibie Ainun 3'
GROUP BY f.judul, j.id_theater
ORDER BY j.id_theater;
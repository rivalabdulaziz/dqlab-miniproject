/* Pencarian nama dan alamat pelanggan yang membeli produk tertentu */

SELECT DISTINCT ms.kode_pelanggan,
       ms.nama_customer,
       ms.alamat
  FROM ms_pelanggan AS ms
       INNER JOIN tr_penjualan AS tr
       ON ms.kode_pelanggan = tr.kode_pelanggan
 WHERE tr.nama_produk IN ('Kotak Pensil DQLab',
                          'Flashdisk DQLab 32 GB',
                          'Sticky Notes DQLab 500 sheets');

/* Output:
+----------------+--------------------+----------------------------------------+
| kode_pelanggan | nama_customer      | alamat                                 |
+----------------+--------------------+----------------------------------------+
| dqlabcust01    | Eva Novianti, S.H. | Vila Sempilan, No. 67 - Kota B         |
| dqlabcust03    | Unang Handoko      | Vila Sempilan, No. 1 - Kota B          |
| dqlabcust05    | Tommy Sinaga       | Vila Permata Intan Berkilau, Blok A1/2 |
| dqlabcust07    | Agus Cahyono       | Vila Gunung Seribu, Blok F4 - No. 8    |
+----------------+--------------------+----------------------------------------+
*/

/* Penyatuan katalog produk dengan batasan harga tertentu */

SELECT nama_produk,
       kode_produk, harga 
  FROM ms_produk_1
 WHERE harga < 100000

 UNION

SELECT nama_produk,
       kode_produk, harga 
  FROM ms_produk_2
 WHERE harga < 50000
 
/* Output:
+----------------------------+-------------+-------+
| nama_produk                | kode_produk | harga |
+----------------------------+-------------+-------+
| Kotak Pensil DQLab         | prod-01     | 62500 |
| Flashdisk DQLab 64 GB      | prod-02     | 55000 |
| Flashdisk DQLab 32 GB      | prod-04     | 40000 |
| Tas Travel Organizer DQLab | prod-07     | 48000 |
| Gantungan Kunci DQLab      | prod-08     | 15800 |
+----------------------------+-------------+-------+
*/

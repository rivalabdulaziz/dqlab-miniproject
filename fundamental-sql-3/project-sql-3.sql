/* Pencarian nama dan alamat pelanggan yang membeli produk tertentu */

SELECT DISTINCT ms.kode_pelanggan,
       ms.nama_customer,
       ms.alamat
  FROM ms_pelanggan AS ms
       INNER JOIN tr_penjualan AS tr
       ON ms.kode_pelanggan = tr.kode_pelanggan
 WHERE tr.nama_produk IN ('Kotak Pensil DQLab',
                          'Flashdisk DQLab 32 GB',
                          'Sticky Notes DQLab 500 sheets')

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

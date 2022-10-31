/* Segmentasi pelanggan berdasarkan average revenue */

SELECT kode_pelanggan,
       ROUND(AVG(total),0) AS avg_total,
       CASE  
          WHEN ROUND(AVG(total),0) > 300000 THEN 'Affluent Customer'
          ELSE 'Mass Customer'  
       END AS kategori
  FROM tr_penjualan
 GROUP BY kode_pelanggan;

/* Output:
+----------------+-----------+-------------------+
| kode_pelanggan | avg_total | kategori          |
+----------------+-----------+-------------------+
| dqlabcust01    |    156000 | Mass Customer     |
| dqlabcust02    |    515800 | Affluent Customer |
| dqlabcust03    |    181667 | Mass Customer     |
| dqlabcust05    |    139500 | Mass Customer     |
| dqlabcust07    |    202125 | Mass Customer     |
+----------------+-----------+-------------------+
*/

/* Segmentasi produk berdasarkan total revenue */

SELECT kode_produk,
       SUM(qty) AS qty, SUM(total) AS total,
       CASE  
          WHEN SUM(total) > 300000 THEN 'High'
          WHEN SUM(total) < 100000 THEN 'Low'   
          ELSE 'Medium'  
       END AS kategori
  FROM tr_penjualan
 GROUP BY kode_produk;
 
/* Output:
+-------------+------+---------+----------+
| kode_produk | qty  | total   | kategori |
+-------------+------+---------+----------+
| prod-01     |    6 |  375000 | High     |
| prod-02     |    2 |  110000 | Medium   |
| prod-03     |    3 |  300000 | Medium   |
| prod-04     |    9 |  360000 | High     |
| prod-05     |    4 | 1000000 | High     |
| prod-07     |    1 |   48000 | Low      |
| prod-08     |    2 |   31600 | Low      |
| prod-09     |    6 |  552000 | High     |
| prod-10     |    9 |  495000 | High     |
+-------------+------+---------+----------+
*/

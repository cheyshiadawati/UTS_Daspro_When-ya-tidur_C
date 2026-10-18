# UTS_Daspro_When-ya-tidur_C
# Mart Gaje (Gampang dan Jelas)

# DESKRIPSI PROYEK : 
MART GAJE (Gampang dan Jelas) adalah program kasir sederhana berbasis bahasa pemrograman Pascal yang dirancang untuk membantu proses perhitungan transaksi belanja. Program ini memungkinkan pengguna memasukkan data barang berupa nama barang, harga satuan, dan jumlah pembelian. Program juga menyediakan fitur perhitungan diskon belanja, diskon khusus member, pajak, total pembayaran, serta uang kembalian. Selain itu, program dilengkapi dengan validasi input dan konfirmasi untuk melakukan transaksi berikutnya. Dengan fitur-fitur tersebut, program MART GAJE diharapkan dapat membuat proses perhitungan belanja menjadi lebih mudah, praktis, dan terstruktur.
# DAFTAR NAMA KELOMPOK : 
1. Cheyshia Dawati Sinaga (261401038),Lab2_DP5
2. Arfina Oktavia (261401066), Lab2_DP5
3. Kelvin Akata Pasaribu (261401051),Lab2_DP5

# Fitur-Fitur Utama Program
1. Input Data Barang: Pengguna dapat memasukkan jumlah jenis barang, nama barang, harga satuan, dan jumlah barang yang dibeli. Program menggunakan perulangan "for-to-do" untuk memproses setiap barang.
2. Validasi Input: Program memastikan jumlah barang, harga satuan, dan jumlah pembelian harus lebih dari nol. Validasi menggunakan "repeat-until" dan "if-then" agar data yang dimasukkan sesuai dengan ketentuan.
3. Perhitungan Total Belanja: Program menghitung total harga setiap barang dengan mengalikan harga satuan dan jumlah pembelian. Seluruh harga barang kemudian dijumlahkan untuk memperoleh total belanja awal.
4. Diskon Belanja Otomatis: Program memberikan diskon sebesar 5% apabila total belanja awal mencapai Rp100.000 atau lebih. Jika total belanja kurang dari Rp100.000, diskon tidak diberikan. Perhitungan menggunakan struktur kondisi "if-then-else".
5. Diskon Khusus Member: Program menanyakan apakah pengguna memiliki kartu member. Jika pengguna menjawab "y" atau "Y", program memberikan diskon tambahan sebesar 3% dari total belanja setelah diskon awal. Jika pengguna bukan member, diskon member bernilai Rp0.
6. Perhitungan Pajak: Program menghitung pajak sebesar 12% dari total belanja setelah seluruh diskon diterapkan. Nilai pajak kemudian ditambahkan ke total belanja untuk mendapatkan total pembayaran.
7. Perhitungan Total Pembayaran: Program menghitung jumlah akhir yang harus dibayar pengguna berdasarkan total belanja setelah diskon dan pajak yang dikenakan.
8. Validasi Pembayaran dan Perhitungan Kembalian: Program memeriksa apakah uang pembayaran mencukupi. Jika uang belum cukup, program menampilkan jumlah kekurangan dan meminta pengguna memasukkan pembayaran kembali. Jika pembayaran mencukupi, program menghitung uang kembalian.
9. Konfirmasi Transaksi Berikutnya: Setelah transaksi selesai, pengguna dapat memilih untuk melakukan perhitungan belanja lagi atau mengakhiri program. Perulangan "while" digunakan untuk menjalankan transaksi berulang, sedangkan perintah "break" digunakan untuk menghentikan perulangan ketika pengguna memilih "n" atau "N".
10. Struk Belanja dan Tampilan Akhir: Program menampilkan ringkasan transaksi yang mencakup total belanja awal, diskon belanja, diskon member, pajak, total pembayaran, uang yang dibayarkan, dan kembalian. Ketika program berakhir, pengguna akan melihat ucapan terima kasih dan informasi bahwa barang yang telah dibeli tidak dapat ditukar kembali.

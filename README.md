# UTS_Daspro_When-ya-tidur_C
# Mart Gaje (Gampang dan Jelas)

# DESKRIPSI PROYEK : 
MART GAJE (Gampang and Jelas) adalah program kasir sederhana berbasis bahasa pemrograman Pascal yang dirancang untuk membantu pengguna melakukan transaksi belanja berdasarkan kategori barang. Program menyediakan tiga kategori belanja, yaitu sayur, buah, dan jajanan, dengan pilihan barang serta harga yang telah ditentukan. Pengguna dapat memilih barang, menentukan jumlah pembelian, dan berbelanja dari beberapa kategori dalam satu transaksi. Program juga dilengkapi dengan fitur perhitungan diskon belanja, diskon khusus member, pajak, validasi pembayaran, dan uang kembalian. Melalui menu interaktif dan proses perhitungan otomatis, program ini bertujuan mempermudah simulasi transaksi belanja secara praktis dan terstruktur.
# DAFTAR NAMA KELOMPOK : 
1. Cheyshia Dawati Sinaga (261401038),Lab2_DP5
2. Arfina Oktavia (261401066), Lab2_DP5
3. Kelvin Akata Pasaribu (261401051),Lab2_DP5

# Fitur-Fitur Utama Program
1. Menu Interaktif Berbasis Kategori: Program menyediakan menu utama yang memungkinkan pengguna memilih kategori sayur, buah, atau jajanan. Pengguna juga dapat menyelesaikan proses belanja melalui pilihan menu yang tersedia. Perulangan "while true do" dan struktur "case-of" digunakan untuk menjalankan menu dan memproses pilihan kategori.
2. Pilihan Barang dan Harga: Setiap kategori memiliki tiga pilihan barang dengan harga yang telah ditentukan. Pengguna cukup memasukkan nomor barang dan jumlah pembelian tanpa perlu mengetik harga secara manual. Struktur "case-of" digunakan untuk menentukan harga berdasarkan nomor barang.
3. Input dan Validasi Jumlah Pembelian: Program meminta pengguna memasukkan jumlah barang yang ingin dibeli dan jumlah pembelian untuk setiap barang. Perulangan "for-to-do" digunakan untuk memproses barang, sedangkan "repeat-until" memastikan nomor barang dan jumlah pembelian yang dimasukkan lebih dari nol.
4. Perhitungan Total Belanja: Program menghitung total harga setiap barang berdasarkan harga satuan dan jumlah pembelian, kemudian menjumlahkannya ke dalam "TotalBelanjaAwal". Nilai ini terus diakumulasikan sehingga pembelian dari beberapa kategori dapat dihitung dalam satu transaksi.
5. Diskon Belanja Otomatis: Program memberikan diskon sebesar 5% jika total belanja awal mencapai Rp100.000 atau lebih. Jika total belanja belum mencapai batas tersebut, diskon tidak diberikan. Perhitungan menggunakan struktur "if-then-else".
6. Diskon Khusus Member: Program menanyakan apakah pengguna memiliki kartu member. Jika pengguna menjawab "y" atau "Y", program memberikan diskon tambahan sebesar 3% dari total belanja setelah diskon awal. Jika bukan member, diskon member bernilai Rp0.
7. Perhitungan Pajak dan Total Pembayaran: Program menghitung pajak sebesar 12% dari total belanja setelah diskon belanja dan diskon member. Pajak tersebut ditambahkan untuk memperoleh total akhir yang harus dibayar pengguna.
8. Validasi Pembayaran dan Perhitungan Kembalian: Program memeriksa apakah uang pembayaran mencukupi. Jika belum cukup, program menampilkan jumlah kekurangan dan meminta pengguna memasukkan pembayaran kembali. Setelah pembayaran mencukupi, program menghitung uang kembalian secara otomatis.
9. Konfirmasi Belanja dan Penyelesaian Transaksi: Pengguna dapat memilih untuk melanjutkan belanja ke kategori lain atau menyelesaikan proses belanja. Perulangan "while true do" memungkinkan pengguna memilih kategori berulang kali, sedangkan "break" digunakan untuk menghentikan perulangan ketika pengguna memilih selesai.
10. Ringkasan Pembayaran dan Tampilan Akhir: Setelah belanja selesai, program menampilkan total belanja awal, diskon belanja, diskon member, pajak, total pembayaran, uang yang dibayarkan, dan kembalian. Program kemudian menampilkan ucapan terima kasih kepada pengguna.

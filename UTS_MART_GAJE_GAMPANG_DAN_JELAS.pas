program MenghitungBelanjaSederhana;

uses crt;

var
  Menu, Jumlah, i, JumlahBeli, nomor, banyak, MenuUtama: integer;
  Nama, konfirm_akhir, Member, konfirm_kategori: string;
  HargaBarang, TotalHargaBarang: real;
  TotalBelanjaAwal, Diskon, TotalBelanja, TotalBelanjamember: real;
  Pajak, TotalBayar, Bayar, Kembalian: real;

begin clrscr;

// TAMPILAN AWAL ____________________________________________________________________
writeln('_____________________________________________________________________');
writeln('                         SELAMAT DATANG DI                           ');
writeln('                    MART GAJE (GAMPANG AND JELAS)                    ');
writeln('                      Jl. Suka-suka no.20 Medan                      ');
writeln('_____________________________________________________________________');

TotalBelanjaAwal := 0; // Inisialisasi agar menampung total belanja sebelumnya saat ngeloop

while true do
begin
//MENU UTAMA: Memilih kategori yang ingin ditampilkan
    writeln;
    writeln('            MENU UTAMA                     ');
    writeln('========================================');
    writeln('1. Belanja Kategori SAYUR');
    writeln('2. Belanja Kategori BUAH');
    writeln('3. Belanja Kategori JAJANAN');
    writeln('----------------------------------------');
    writeln('0. Selesai Belanja & Cetak Struk');
    writeln('----------------------------------------');
    write('Pilih menu kategori (0-3): '); readln(MenuUtama);
    clrscr;

    if MenuUtama = 0 then
      break;

//KATEGORI 1____________________________________________________________________
    case MenuUtama of
      1: 
        begin
            clrscr;
            writeln('========================================');
            writeln('          MENU KATEGORI SAYUR           ');
            writeln('========================================');
            writeln('1. Bayam    - Rp 5.000');
            writeln('2. Kangkung - Rp 4.000');
            writeln('3. Sawi     - Rp 4.500');
            writeln('----------------------------------------');
            writeln('0. Selesai / Kembali ke Menu Utama');
            writeln('----------------------------------------');
            
            write('Masukkan banyak belanjaan: '); readln(banyak);

            // PROSES PERHITUNGAN DALAM LOOP FOR
            for i := 1 to banyak do
            begin
              writeln;
              writeln('Barang ke-', i);

              repeat
                  write('Masukkan no. barang: '); readln(nomor);
                  write('Jumlah beli untuk  : '); readln(JumlahBeli);
                  if (JumlahBeli <= 0) or (nomor <= 0) then
                      writeln('Jumlah beli harus lebih dari 0!');
              until (JumlahBeli > 0) and (nomor > 0);

              case nomor of
                1: HargaBarang := 5000;
                2: HargaBarang := 4000;
                3: HargaBarang := 4500;
              else
                begin
                  writeln('Pilihan sayur tidak valid! Harga dianggap 0.');
                  HargaBarang := 0;
                end;
              end;

              TotalHargaBarang := HargaBarang * JumlahBeli;
              TotalBelanjaAwal := TotalBelanjaAwal + TotalHargaBarang;

              writeln('Total harga    : Rp', TotalHargaBarang:0:0);
            end;
        end;

//KATEGORI 2____________________________________________________________________
      2: 
        begin
            clrscr;
            writeln('========================================');
            writeln('          MENU KATEGORI BUAH            ');
            writeln('========================================');
            writeln('1. Mangga    - Rp 12.000');
            writeln('2. Jeruk     - Rp  9.000');
            writeln('3. Semangka  - Rp 20.000');
            writeln('----------------------------------------');
            writeln('0. Selesai / Kembali ke Menu Utama');
            writeln('----------------------------------------');
            
            write('Masukkan banyak belanjaan: '); readln(banyak);

            // PROSES PERHITUNGAN DALAM LOOP FOR
            for i := 1 to banyak do
            begin
              writeln;
              writeln('Barang ke-', i);

              repeat
                  write('Masukkan no. barang: '); readln(nomor);
                  write('Jumlah beli untuk  : '); readln(JumlahBeli);
                  if (JumlahBeli <= 0) or (nomor <= 0) then
                      writeln('Jumlah beli harus lebih dari 0!');
              until (JumlahBeli > 0) and (nomor > 0);

              case nomor of
                1: HargaBarang := 12000; 
                2: HargaBarang := 9000;
                3: HargaBarang := 20000;
              else
                begin
                  writeln('Pilihan buah tidak valid! Harga dianggap 0.');
                  HargaBarang := 0;
                end;
              end;

              TotalHargaBarang := HargaBarang * JumlahBeli;
              TotalBelanjaAwal := TotalBelanjaAwal + TotalHargaBarang;

              writeln('Total harga    : Rp', TotalHargaBarang:0:0);
            end;
        end;

//KATEGORI 3____________________________________________________________________
      3: 
        begin
            clrscr;
            writeln('========================================');
            writeln('          MENU KATEGORI JAJANAN         ');
            writeln('========================================');
            writeln('1. Keripik Singkong - Rp  6.000');
            writeln('2. Roti Bakar       - Rp 10.000');
            writeln('3. Es Teh Manis     - Rp  3.000');
            writeln('----------------------------------------');
            writeln('0. Selesai / Kembali ke Menu Utama');
            writeln('----------------------------------------');
            
            write('Masukkan banyak belanjaan: '); readln(banyak);

            // PROSES PERHITUNGAN DALAM LOOP FOR
            for i := 1 to banyak do
            begin
              writeln;
              writeln('Barang ke-', i);

              repeat
                  write('Masukkan no. barang: '); readln(nomor);
                  write('Jumlah beli untuk  : '); readln(JumlahBeli);
                  if (JumlahBeli <= 0) or (nomor <= 0) then
                      writeln('Jumlah beli harus lebih dari 0!');
              until (JumlahBeli > 0) and (nomor > 0);

              case nomor of
                1: HargaBarang := 6000;
                2: HargaBarang := 10000; 
                3: HargaBarang := 3000; 
              else
                begin
                  writeln('Pilihan jajanan tidak valid! Harga dianggap 0.');
                  HargaBarang := 0;
                end;
              end;

              TotalHargaBarang := HargaBarang * JumlahBeli;
              TotalBelanjaAwal := TotalBelanjaAwal + TotalHargaBarang;

              writeln('Total harga    : Rp', TotalHargaBarang:0:0);
            end;
        end;
    else
      writeln('Menu kategori tidak valid!');
    end;

    // KONFIRMASI APAKAH INGIN BELANJA KATEGORI LAIN ATAU SELESAI
    writeln;
    write('Apakah anda ingin belanja kategori lain? [y/n]: '); readln(konfirm_kategori);
    if (konfirm_kategori = 'n') or (konfirm_kategori = 'N') then
    begin
        break;
    end;
    clrscr;
end;


//DISKON & PEMBAYARAN
if TotalBelanjaAwal > 0 then
begin
      { Menghitung diskon (flat diskon)}
      if TotalBelanjaAwal >= 100000 then
        Diskon := TotalBelanjaAwal * 0.05
      else
        Diskon := 0;

      { Menghitung total setelah diskon }
      TotalBelanja := TotalBelanjaAwal - Diskon;
      
      //diskon untuk member(flat diskon)
      writeln;
      write('Apakah anda mempunyai kartu member [y/n]: '); readln (member);

      //Menghitung Diskon Member dan Pajak
      if (member = 'y') or (member = 'Y') then //muncul ketika ada kartu member
      begin
        TotalBelanjamember := TotalBelanja * 0.03;
        TotalBelanja := TotalBelanja - TotalBelanjamember;
      end
      else // muncul untuk non member
      begin
        TotalBelanjamember := 0;
      end;
      
      Pajak := TotalBelanja * 0.12;
      TotalBayar := TotalBelanja + Pajak;

      writeln;
      writeln('----------------------------------------');
      writeln('TOTAL BELANJA AWAL : Rp', TotalBelanjaAwal:0:0);
      writeln('DISKON BELANJA     : Rp', Diskon:0:0);
      writeln('DISKON MEMBER      : Rp', TotalBelanjamember:0:0);
      writeln('PAJAK (12%)        : Rp', Pajak:0:0);
      writeln('TOTAL YANG DIBAYAR : Rp', TotalBayar:0:0);
      writeln('----------------------------------------');

    //Validasi pembayaran
      repeat
        writeln;
        write('Uang pembayaran      : Rp');
        readln(Bayar);

        if Bayar < TotalBayar then
        begin
          writeln('Uang belum cukup!');
          writeln('Kekurangan           : Rp', (TotalBayar - Bayar):0:0);
        end;
      until Bayar >= TotalBayar;

      Kembalian := Bayar - TotalBayar;

      writeln;
      writeln('Pembayaran           : Rp', Bayar:0:0);
      writeln('Kembalian            : Rp', Kembalian:0:0);
end;

//TAMPILAN AKHIR
writeln;
writeln('__________________Terima kasih telah berbelanja!_____________________');
writeln('________Barang yang sudah dibeli tidak bisa ditukar kembali__________');
end.

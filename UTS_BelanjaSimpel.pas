program MenghitungBelanjaSederhana;
uses crt;

var
  Menu, Jumlah, i, JumlahBeli: integer;
  Nama, konfirm_akhir, Member: string;
  Harga, TotalHargaBarang: real;
  TotalBelanjaAwal, Diskon, TotalBelanja, TotalBelanjamember: real;
  Pajak, TotalBayar, Bayar, Kembalian: real;

begin clrscr;
// TAMPILAN AWAL ____________________________________________________________________
writeln('_____________________________________________________________________');
writeln('                          SELAMAT DATANG DI                          ');
writeln('                    MART GAJE (GAMPANG DAN JELAS)                    ');
writeln('                     Jl. Suka-suka no.20 Medan                       ');
writeln('_____________________________________________________________________');

    while true do 
    begin

    //TOTAL BELANJA AWAL
          TotalBelanjaAwal := 0;//inisialisasi agar menampung total belanja sebelumnya saat ngeloop

          writeln('INPUT DATA BARANG');
          repeat // perulangan agar tidak ada jumlah barang < 0________________
            write('Jumlah barang: ');
            readln(Jumlah);

            if Jumlah <= 0 then
              writeln('Jumlah barang harus lebih dari 0!');
          until Jumlah > 0;

          for i := 1 to Jumlah do
          begin
            writeln;
            writeln('Barang ke-', i);

            write('Nama barang    : ');
            readln(Nama);

            repeat// perulangan agar tidak ada harga barang < 0________________
              write('Harga satuan   : Rp');
              readln(Harga);

              if Harga <= 0 then
                writeln('Harga harus lebih dari 0!');
            until Harga > 0;

            repeat// perulangan agar tidak ada harga barang < 0________________
              write('Jumlah beli    : ');
              readln(JumlahBeli);

              if JumlahBeli <= 0 then
                writeln('Jumlah beli harus lebih dari 0!');
            until JumlahBeli > 0;

            TotalHargaBarang := Harga * JumlahBeli;
            TotalBelanjaAwal := TotalBelanjaAwal + TotalHargaBarang;

            writeln('Total harga    : Rp', TotalHargaBarang:0:0);
          end;

    //DISKON
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
          TotalBelanjamember := 0;
          Pajak := TotalBelanja * 0.12;
          TotalBayar := TotalBelanja + Pajak;
  
    //Menampilkan struk belanja
          writeln;
          writeln('-------------STRUK BELANJA-------------');

          writeln('Total belanja awal   : Rp', TotalBelanjaAwal:0:0);
          writeln('Diskon               : Rp', Diskon:0:0);
          writeln('Diskon Member        : Rp', TotalBelanjamember:0:0);
          writeln('Pajak                : Rp', Pajak:0:0);
          writeln('Total bayar          : Rp', TotalBayar:0:0);

    //Validasi pembayaran
          repeat
            writeln;
            write('Uang pembayaran      :Rp');
            readln(Bayar);

            if Bayar < TotalBayar then
            begin
              writeln('Uang belum cukup!');
              writeln('Kekurangan           :Rp', (TotalBayar - Bayar):0:0);
            end;
          until Bayar >= TotalBayar;

          Kembalian := Bayar - TotalBayar;

          writeln;
          writeln('Pembayaran           :Rp', Bayar:0:0);
          writeln('Kembalian            :Rp', Kembalian:0:0);
    
    //KONFIRMASI AKHIR
          write('Apakah anda ingin melakukan perhitungan lagi? [y/n]'); readln(konfirm_akhir);
          if (konfirm_akhir = 'n') or (konfirm_akhir = 'N') then
            break;
        end;

//TAMPILAN AKHIR
writeln;
writeln('__________________Terima kasih telah berbelanja!_____________________');
writeln('________Barang yang sudah dibeli tidak bisa ditukar kembali__________');

end.

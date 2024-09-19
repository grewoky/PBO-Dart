
//Pewarisan
class Kendaraan{
  String merek;
  int tahunProduksi;

  Kendaraan(this.merek, this.tahunProduksi);

  void infoKendaraan(){
    print('Ini Info Kendaraan');
    print( '$merek, Tahun : $tahunProduksi');
  }

}

class Mobil extends Kendaraan{
  int jumlahPintu;

  //Mobil(this.merek, this.model, this.tahunProduksi);
  Mobil(super.merek, super.tahunProduksi, this.jumlahPintu);


  void infoMobil(){
  print('Ini Info Mobil');
  print('Mobil $merek');
  print('Tahun: $tahunProduksi');
  print('Pintu: $jumlahPintu');
  
  }

}


//Polimorfisme
class Hewan{
  void suara(){
    print('Suara Hewan!');
  }
}

class Anjing extends Hewan{
  String nama;

  Anjing(this.nama);

  @override
  void suara(){
    print('$nama: Guk guk!');
  }
}

class Kucing extends Hewan{
  @override 
  void suara(){
    print('Meong meong!');
  }
}

//Enkapsulasi
class Mahasiswa{
  String _nama;
  int _umur;
  
  Mahasiswa(this._nama, this._umur);


String get nama => _nama;
set nama(String value) => _nama = value;

int get umur => _umur;
set umur(int value) => _umur = value;
}

//Abstraksi
abstract class Bentuk{
  double hitungLuas();
}

class Persegi extends Bentuk{
  double sisi;

  Persegi(this.sisi);

  @override
  double hitungLuas(){
    return sisi * sisi;
  }
}

class Lingkaran extends Bentuk{
  double jariJari;

  Lingkaran(this.jariJari);

  @override
  double hitungLuas(){
    return 3.14 * jariJari * jariJari;
  }
}



void main(){
  var mobil = Mobil('Toyota', 2019, 3);
  mobil.infoKendaraan();
  mobil.infoMobil();

  Anjing anjing = Anjing('Dhafa');
  anjing.suara();

  Kucing kucing = Kucing();
  kucing.suara();

  Mahasiswa mhs = Mahasiswa('Adjie', 51);
  //Menggunakan Getter
  print('Nama Mahasiswa: ${mhs.nama}');
  print('Umur Mahasiswa: ${mhs.umur} tahun');

  //Menggunakan Setter
  mhs.nama = 'Jane';
  mhs.umur = 22;

  //Menampilkan data setelah perubahan
  print('Nama Mahasiwa: ${mhs.nama}');
  print('Umur Mahasiswa: ${mhs.umur} tahun');


  var persegi = Persegi(5.0);
  var luasPersegi = persegi.hitungLuas();
  print('Luas Persegi $luasPersegi');

  var lingkaran = Lingkaran(3.0);
  var luasLingkaran = lingkaran.hitungLuas();
  print('Luas Lingkaran : $luasLingkaran');

}

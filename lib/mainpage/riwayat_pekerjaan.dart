/// success : true
/// data : [{"id":1938,"client":"PT Indah Pasir Kencana","nama_pelanggan":"Lenny Anggraeni","tujuan":"pt. Sinar Indogreen Kencana","reference":"PO-202106-000006","do_number":"DO-AGRS-020621.1443","po_number":"PO-202106-000006","waktu_muat":"Kamis, 03 Juni 2021 17:00","alamat_muat":"Ketapang, Campurejo, Tuban, Jawa Timur, Indonesia","kota_muat":"Ketapang","waktu_bongkar":"Jumat, 04 Juni 2021 09:00","alamat_bongkar":"PT. Sinar Indogreen Kencana, Jalan Raya Ponokawan, Karangpoh, Ponokawan, Kabupaten Sidoarjo, Jawa Timur, Indonesia","kota_bongkar":"Krian","nama_barang":"Pasir Cuci","volume":30,"satuan":"kubik","sangu":675000,"jarak":101905,"status_ambil":true,"status_pengiriman":"done","driver":"Test","nomor_polisi":"W 1111 UA","type":"full kontrak","status":"diambil"},{"id":1939,"client":"PT Indah Pasir Kencana","nama_pelanggan":"Lenny Anggraeni","tujuan":"pt. Sinar Indogreen Kencana","reference":"PO-202106-000006","do_number":"DO-AGRS-020621.1444","po_number":"PO-202106-000006","waktu_muat":"Kamis, 03 Juni 2021 17:00","alamat_muat":"Ketapang, Campurejo, Tuban, Jawa Timur, Indonesia","kota_muat":"Ketapang","waktu_bongkar":"Jumat, 04 Juni 2021 09:00","alamat_bongkar":"PT. Sinar Indogreen Kencana, Jalan Raya Ponokawan, Karangpoh, Ponokawan, Kabupaten Sidoarjo, Jawa Timur, Indonesia","kota_bongkar":"Krian","nama_barang":"Pasir Cuci","volume":30,"satuan":"kubik","sangu":675000,"jarak":101905,"status_ambil":true,"status_pengiriman":"done","driver":"Test","nomor_polisi":"W 1111 UA","type":"full kontrak","status":"diambil"},{"id":2044,"client":"PT Indah Pasir Kencana","nama_pelanggan":"Lenny Anggraeni","tujuan":null,"reference":"PO-202106-000015","do_number":"DO-AGRS-070621.1549","po_number":"PO-202106-000015","waktu_muat":"Rabu, 09 Juni 2021 12:00","alamat_muat":"Rungkut Industri, Rungkut Menanggal, Surabaya City, East Java, Indonesia","kota_muat":"Surabaya","waktu_bongkar":"Jumat, 11 Juni 2021 12:00","alamat_bongkar":"Agros Indonesia, Jl. Proklamasi Fisika, Pekauman, Gresik Regency, East Java, Indonesia","kota_bongkar":"Gresik","nama_barang":"Macbook Pro 2021","volume":30,"satuan":"ton","sangu":745181,"jarak":35645,"status_ambil":true,"status_pengiriman":"done","driver":"Test","nomor_polisi":"W 1111 UA","type":"full kontrak","status":"diambil"},{"id":5937,"client":"PT Indah Pasir Kencana","nama_pelanggan":"Lenny Anggraeni","tujuan":"PT ABC","reference":"PO-202107-000046","do_number":"DO-AGRS-230721.3992","po_number":"PO1-TEST","waktu_muat":"Jumat, 23 Juli 2021 16:00","alamat_muat":"Manyar, gresik","kota_muat":"Gresik","waktu_bongkar":"Sabtu, 24 Juli 2021 12:00","alamat_bongkar":"Puger, Jember","kota_bongkar":"Jember","nama_barang":"Pasir","volume":30,"satuan":"Ton","sangu":1000000,"jarak":200,"status_ambil":true,"status_pengiriman":"done","driver":"Test","nomor_polisi":"W 1111 UA","type":"Full Kontrak","status":"diambil"},{"id":7420,"client":"Demo shipper personal","nama_pelanggan":"Demo shipper personal","tujuan":"PT Kerabat Shipper","reference":"PO-202109-000034","do_number":"DO-AGRS-110921.5405","po_number":"PO1-TEST","waktu_muat":"Sabtu, 11 September 2021 12:00","alamat_muat":"Jl Raya","kota_muat":"Gresik","waktu_bongkar":"Minggu, 12 September 2021 12:00","alamat_bongkar":"Jl Raya","kota_bongkar":"Rembang","nama_barang":"Pasir lumajang","volume":35,"satuan":"Ton","sangu":1000000,"jarak":200,"status_ambil":true,"status_pengiriman":"done","driver":"Test","nomor_polisi":"W 1111 UA","type":"Full Kontrak","status":"diambil"}]
/// message : "Data loaded successfully"
/// balance : 1177626

class Riwayat_pekerjaanResponse {
  bool _success;
  List<RiwayatPekerjaan> _data;
  String _message;
  int _balance;

  bool get success => _success;
  List<RiwayatPekerjaan> get data => _data;
  String get message => _message;
  int get balance => _balance;

  Riwayat_pekerjaanResponse(
      {bool success,
      List<RiwayatPekerjaan> data,
      String message,
      int balance}) {
    _success = success;
    _data = data;
    _message = message;
    _balance = balance;
  }

  Riwayat_pekerjaanResponse.fromJson(dynamic json) {
    _success = json["success"];
    if (json["data"] != null) {
      _data = [];
      json["data"].forEach((v) {
        _data?.add(RiwayatPekerjaan.fromJson(v));
      });
    }
    _message = json["message"];
    _balance = json["balance"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["success"] = _success;
    if (_data != null) {
      map["data"] = _data?.map((v) => v.toJson()).toList();
    }
    map["message"] = _message;
    map["balance"] = _balance;
    return map;
  }
}

/// id : 1938
/// client : "PT Indah Pasir Kencana"
/// nama_pelanggan : "Lenny Anggraeni"
/// tujuan : "pt. Sinar Indogreen Kencana"
/// reference : "PO-202106-000006"
/// do_number : "DO-AGRS-020621.1443"
/// po_number : "PO-202106-000006"
/// waktu_muat : "Kamis, 03 Juni 2021 17:00"
/// alamat_muat : "Ketapang, Campurejo, Tuban, Jawa Timur, Indonesia"
/// kota_muat : "Ketapang"
/// waktu_bongkar : "Jumat, 04 Juni 2021 09:00"
/// alamat_bongkar : "PT. Sinar Indogreen Kencana, Jalan Raya Ponokawan, Karangpoh, Ponokawan, Kabupaten Sidoarjo, Jawa Timur, Indonesia"
/// kota_bongkar : "Krian"
/// nama_barang : "Pasir Cuci"
/// volume : 30
/// satuan : "kubik"
/// sangu : 675000
/// jarak : 101905
/// status_ambil : true
/// status_pengiriman : "done"
/// driver : "Test"
/// nomor_polisi : "W 1111 UA"
/// type : "full kontrak"
/// status : "diambil"

class RiwayatPekerjaan {
  int _id;
  String _client;
  String _namaPelanggan;
  String _tujuan;
  String _reference;
  String _doNumber;
  String _poNumber;
  String _waktuMuat;
  String _alamatMuat;
  String _kotaMuat;
  String _waktuBongkar;
  String _alamatBongkar;
  String _kotaBongkar;
  String _namaBarang;
  int _volume;
  String _satuan;
  int _sangu;
  int _jarak;
  bool _statusAmbil;
  String _statusPengiriman;
  String _driver;
  String _nomorPolisi;
  String _type;
  String _status;

  int get id => _id;
  String get client => _client;
  String get namaPelanggan => _namaPelanggan;
  String get tujuan => _tujuan;
  String get reference => _reference;
  String get doNumber => _doNumber;
  String get poNumber => _poNumber;
  String get waktuMuat => _waktuMuat;
  String get alamatMuat => _alamatMuat;
  String get kotaMuat => _kotaMuat;
  String get waktuBongkar => _waktuBongkar;
  String get alamatBongkar => _alamatBongkar;
  String get kotaBongkar => _kotaBongkar;
  String get namaBarang => _namaBarang;
  int get volume => _volume;
  String get satuan => _satuan;
  int get sangu => _sangu;
  int get jarak => _jarak;
  bool get statusAmbil => _statusAmbil;
  String get statusPengiriman => _statusPengiriman;
  String get driver => _driver;
  String get nomorPolisi => _nomorPolisi;
  String get type => _type;
  String get status => _status;

  RiwayatPekerjaan(
      {int id,
      String client,
      String namaPelanggan,
      String tujuan,
      String reference,
      String doNumber,
      String poNumber,
      String waktuMuat,
      String alamatMuat,
      String kotaMuat,
      String waktuBongkar,
      String alamatBongkar,
      String kotaBongkar,
      String namaBarang,
      int volume,
      String satuan,
      int sangu,
      int jarak,
      bool statusAmbil,
      String statusPengiriman,
      String driver,
      String nomorPolisi,
      String type,
      String status}) {
    _id = id;
    _client = client;
    _namaPelanggan = namaPelanggan;
    _tujuan = tujuan;
    _reference = reference;
    _doNumber = doNumber;
    _poNumber = poNumber;
    _waktuMuat = waktuMuat;
    _alamatMuat = alamatMuat;
    _kotaMuat = kotaMuat;
    _waktuBongkar = waktuBongkar;
    _alamatBongkar = alamatBongkar;
    _kotaBongkar = kotaBongkar;
    _namaBarang = namaBarang;
    _volume = volume;
    _satuan = satuan;
    _sangu = sangu;
    _jarak = jarak;
    _statusAmbil = statusAmbil;
    _statusPengiriman = statusPengiriman;
    _driver = driver;
    _nomorPolisi = nomorPolisi;
    _type = type;
    _status = status;
  }

  RiwayatPekerjaan.fromJson(dynamic json) {
    _id = json["id"];
    _client = json["client"];
    _namaPelanggan = json["nama_pelanggan"];
    _tujuan = json["tujuan"];
    _reference = json["reference"];
    _doNumber = json["do_number"];
    _poNumber = json["po_number"];
    _waktuMuat = json["waktu_muat"];
    _alamatMuat = json["alamat_muat"];
    _kotaMuat = json["kota_muat"];
    _waktuBongkar = json["waktu_bongkar"];
    _alamatBongkar = json["alamat_bongkar"];
    _kotaBongkar = json["kota_bongkar"];
    _namaBarang = json["nama_barang"];
    _volume = json["volume"];
    _satuan = json["satuan"];
    _sangu = json["sangu"];
    _jarak = json["jarak"];
    _statusAmbil = json["status_ambil"];
    _statusPengiriman = json["status_pengiriman"];
    _driver = json["driver"];
    _nomorPolisi = json["nomor_polisi"];
    _type = json["type"];
    _status = json["status"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["client"] = _client;
    map["nama_pelanggan"] = _namaPelanggan;
    map["tujuan"] = _tujuan;
    map["reference"] = _reference;
    map["do_number"] = _doNumber;
    map["po_number"] = _poNumber;
    map["waktu_muat"] = _waktuMuat;
    map["alamat_muat"] = _alamatMuat;
    map["kota_muat"] = _kotaMuat;
    map["waktu_bongkar"] = _waktuBongkar;
    map["alamat_bongkar"] = _alamatBongkar;
    map["kota_bongkar"] = _kotaBongkar;
    map["nama_barang"] = _namaBarang;
    map["volume"] = _volume;
    map["satuan"] = _satuan;
    map["sangu"] = _sangu;
    map["jarak"] = _jarak;
    map["status_ambil"] = _statusAmbil;
    map["status_pengiriman"] = _statusPengiriman;
    map["driver"] = _driver;
    map["nomor_polisi"] = _nomorPolisi;
    map["type"] = _type;
    map["status"] = _status;
    return map;
  }
}

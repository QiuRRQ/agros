/// success : true
/// data : {"id":90,"api_token":"$2y$10$fKC6n8dkpcT2hyhp9ewO1.SsDF5I1F2TpPESyaKgipa7gRXaul/KW","nik":"0001","name":"Test","email":"test.driver@agros.com","photo":"drivers/driver-photo-1630032462.jpeg","telepon":"081234567890","address":"Jl veteran","role":"Driver","nomor_polisi":"W 1111 UA","truck":"Test","balance":1177626,"bank_name":"PT. BANK MANDIRI (PERSERO) TBK.","bank_code":"mandiri","account_number":"1780057799997"}
/// message : "Data loaded successfully."

class UserResponse {
  bool _success;
  User _data;
  String _message;

  bool get success => _success;
  User get data => _data;
  String get message => _message;

  UserResponse({bool success, User data, String message}) {
    _success = success;
    _data = data;
    _message = message;
  }

  UserResponse.fromJson(dynamic json) {
    _success = json["success"];
    _data = json["data"] != null ? User.fromJson(json["data"]) : null;
    _message = json["message"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["success"] = _success;
    if (_data != null) {
      map["data"] = _data?.toJson();
    }
    map["message"] = _message;
    return map;
  }
}

/// id : 90
/// api_token : "$2y$10$fKC6n8dkpcT2hyhp9ewO1.SsDF5I1F2TpPESyaKgipa7gRXaul/KW"
/// nik : "0001"
/// name : "Test"
/// email : "test.driver@agros.com"
/// photo : "drivers/driver-photo-1630032462.jpeg"
/// telepon : "081234567890"
/// address : "Jl veteran"
/// role : "Driver"
/// nomor_polisi : "W 1111 UA"
/// truck : "Test"
/// balance : 1177626
/// bank_name : "PT. BANK MANDIRI (PERSERO) TBK."
/// bank_code : "mandiri"
/// account_number : "1780057799997"

class User {
  int _id;
  String _apiToken;
  String _nik;
  String _name;
  String _email;
  String _photo;
  String _telepon;
  String _address;
  String _role;
  String _nomorPolisi;
  String _truck;
  int _balance;
  String _bankName;
  String _bankCode;
  String _accountNumber;

  int get id => _id;
  String get apiToken => _apiToken;
  String get nik => _nik;
  String get name => _name;
  String get email => _email;
  String get photo => _photo;
  String get telepon => _telepon;
  String get address => _address;
  String get role => _role;
  String get nomorPolisi => _nomorPolisi;
  String get truck => _truck;
  int get balance => _balance;
  String get bankName => _bankName;
  String get bankCode => _bankCode;
  String get accountNumber => _accountNumber;

  User(
      {int id,
      String apiToken,
      String nik,
      String name,
      String email,
      String photo,
      String telepon,
      String address,
      String role,
      String nomorPolisi,
      String truck,
      int balance,
      String bankName,
      String bankCode,
      String accountNumber}) {
    _id = id;
    _apiToken = apiToken;
    _nik = nik;
    _name = name;
    _email = email;
    _photo = photo;
    _telepon = telepon;
    _address = address;
    _role = role;
    _nomorPolisi = nomorPolisi;
    _truck = truck;
    _balance = balance;
    _bankName = bankName;
    _bankCode = bankCode;
    _accountNumber = accountNumber;
  }

  User.fromJson(dynamic json) {
    _id = json["id"];
    _apiToken = json["api_token"];
    _nik = json["nik"];
    _name = json["name"];
    _email = json["email"];
    _photo = json["photo"];
    _telepon = json["telepon"];
    _address = json["address"];
    _role = json["role"];
    _nomorPolisi = json["nomor_polisi"];
    _truck = json["truck"];
    _balance = json["balance"];
    _bankName = json["bank_name"];
    _bankCode = json["bank_code"];
    _accountNumber = json["account_number"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["api_token"] = _apiToken;
    map["nik"] = _nik;
    map["name"] = _name;
    map["email"] = _email;
    map["photo"] = _photo;
    map["telepon"] = _telepon;
    map["address"] = _address;
    map["role"] = _role;
    map["nomor_polisi"] = _nomorPolisi;
    map["truck"] = _truck;
    map["balance"] = _balance;
    map["bank_name"] = _bankName;
    map["bank_code"] = _bankCode;
    map["account_number"] = _accountNumber;
    return map;
  }
}

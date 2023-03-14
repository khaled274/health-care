class LoginModel {
  String? expiry;
  String? token;

  LoginModel({required this.expiry, required this.token});

  LoginModel.fromJson(Map<String, dynamic> json) {
    expiry = json['expiry'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['expiry'] = this.expiry;
    data['token'] = this.token;
    return data;
  }
}

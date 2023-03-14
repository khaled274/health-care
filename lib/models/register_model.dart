class RegisterModel {
  String? expiry;
  String? token;

  RegisterModel({this.expiry, this.token});

  RegisterModel.fromJson(Map<String, dynamic> json) {
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

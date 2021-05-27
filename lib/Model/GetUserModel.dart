class GetUserModel {
  Data data;

  GetUserModel({this.data});

  GetUserModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  int id;
  String email;
  String password;
  String balance;
  String phoneNumber;
  String status;

  Data(
      {this.id,
        this.email,
        this.password,
        this.balance,
        this.phoneNumber,
        this.status});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    password = json['password'];
    balance = json['balance'];
    phoneNumber = json['phoneNumber'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['password'] = this.password;
    data['balance'] = this.balance;
    data['phoneNumber'] = this.phoneNumber;
    data['status'] = this.status;
    return data;
  }
}
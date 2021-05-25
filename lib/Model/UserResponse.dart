class UserResponse {
  UserDetails userDetails;
  String status;

  UserResponse({this.userDetails, this.status});

  UserResponse.fromJson(Map<String, dynamic> json) {
    userDetails = json['user_details'] != null
        ? new UserDetails.fromJson(json['user_details'])
        : null;
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.userDetails != null) {
      data['user_details'] = this.userDetails.toJson();
    }
    data['status'] = this.status;
    return data;
  }
}

class UserDetails {
  int id;
  String email;
  String password;
  String balance;
  String phoneNumber;
  String status;

  UserDetails(
      {this.id,
        this.email,
        this.password,
        this.balance,
        this.phoneNumber,
        this.status});

  UserDetails.fromJson(Map<String, dynamic> json) {
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
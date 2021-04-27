class GetPkgModel {
  List<UserData> userData;

  GetPkgModel({this.userData});

  GetPkgModel.fromJson(Map<String, dynamic> json) {
    if (json['user_data'] != null) {
      userData = new List<UserData>();
      json['user_data'].forEach((v) {
        userData.add(new UserData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.userData != null) {
      data['user_data'] = this.userData.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class UserData {
  int id;
  String pName;
  String pCredits;
  String pPrize;
  String date;
  int status;

  UserData(
      {this.id,
        this.pName,
        this.pCredits,
        this.pPrize,
        this.date,
        this.status});

  UserData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    pName = json['p_name'];
    pCredits = json['p_credits'];
    pPrize = json['p_prize'];
    date = json['date'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['p_name'] = this.pName;
    data['p_credits'] = this.pCredits;
    data['p_prize'] = this.pPrize;
    data['date'] = this.date;
    data['status'] = this.status;
    return data;
  }
}
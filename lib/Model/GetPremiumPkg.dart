class getPremiumPkgModel {
  List<UserData> userData;

  getPremiumPkgModel({this.userData});

  getPremiumPkgModel.fromJson(Map<String, dynamic> json) {
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
  String packageType;
  int status;

  UserData(
      {this.id,
        this.pName,
        this.pCredits,
        this.pPrize,
        this.date,
        this.packageType,
        this.status});

  UserData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    pName = json['p_name'];
    pCredits = json['p_credits'];
    pPrize = json['p_prize'];
    date = json['date'];
    packageType = json['package_type'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['p_name'] = this.pName;
    data['p_credits'] = this.pCredits;
    data['p_prize'] = this.pPrize;
    data['date'] = this.date;
    data['package_type'] = this.packageType;
    data['status'] = this.status;
    return data;
  }
}
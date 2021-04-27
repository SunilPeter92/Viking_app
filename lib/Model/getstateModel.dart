class getStateModel {
  List<UserData> userData;

  getStateModel({this.userData});

  getStateModel.fromJson(Map<String, dynamic> json) {
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
  String name;
  int countryId;
  String countryCode;
  String fipsCode;
  String iso2;
  String latitude;
  String longitude;
  String createdAt;
  String updatedAt;
  int flag;
  String wikiDataId;

  UserData(
      {this.id,
        this.name,
        this.countryId,
        this.countryCode,
        this.fipsCode,
        this.iso2,
        this.latitude,
        this.longitude,
        this.createdAt,
        this.updatedAt,
        this.flag,
        this.wikiDataId});

  UserData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    countryId = json['country_id'];
    countryCode = json['country_code'];
    fipsCode = json['fips_code'];
    iso2 = json['iso2'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    flag = json['flag'];
    wikiDataId = json['wikiDataId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['country_id'] = this.countryId;
    data['country_code'] = this.countryCode;
    data['fips_code'] = this.fipsCode;
    data['iso2'] = this.iso2;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['flag'] = this.flag;
    data['wikiDataId'] = this.wikiDataId;
    return data;
  }
}
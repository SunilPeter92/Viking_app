class GetCountryModel {
  CData cData;
  String fData;

  GetCountryModel({this.cData, this.fData});

  GetCountryModel.fromJson(Map<String, dynamic> json) {
    cData = json['c_data'] != null ? new CData.fromJson(json['c_data']) : null;
    fData = json['f_data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.cData != null) {
      data['c_data'] = this.cData.toJson();
    }
    data['f_data'] = this.fData;
    return data;
  }
}

class CData {
  int id;
  String name;
  String sms;
  String cal;
  String mms;
  String iso3;
  String iso2;
  String phonecode;
  String capital;
  String currency;
  String currencySymbol;
  String tld;
  String native;
  String region;
  String subregion;
  String timezones;
  String translations;
  String latitude;
  String longitude;
  String emoji;
  String emojiU;
  String createdAt;
  String updatedAt;
  int flag;
  String wikiDataId;

  CData(
      {this.id,
        this.name,
        this.sms,
        this.cal,
        this.mms,
        this.iso3,
        this.iso2,
        this.phonecode,
        this.capital,
        this.currency,
        this.currencySymbol,
        this.tld,
        this.native,
        this.region,
        this.subregion,
        this.timezones,
        this.translations,
        this.latitude,
        this.longitude,
        this.emoji,
        this.emojiU,
        this.createdAt,
        this.updatedAt,
        this.flag,
        this.wikiDataId});

  CData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    sms = json['sms'];
    cal = json['cal'];
    mms = json['mms'];
    iso3 = json['iso3'];
    iso2 = json['iso2'];
    phonecode = json['phonecode'];
    capital = json['capital'];
    currency = json['currency'];
    currencySymbol = json['currency_symbol'];
    tld = json['tld'];
    native = json['native'];
    region = json['region'];
    subregion = json['subregion'];
    timezones = json['timezones'];
    translations = json['translations'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    emoji = json['emoji'];
    emojiU = json['emojiU'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    flag = json['flag'];
    wikiDataId = json['wikiDataId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['sms'] = this.sms;
    data['cal'] = this.cal;
    data['mms'] = this.mms;
    data['iso3'] = this.iso3;
    data['iso2'] = this.iso2;
    data['phonecode'] = this.phonecode;
    data['capital'] = this.capital;
    data['currency'] = this.currency;
    data['currency_symbol'] = this.currencySymbol;
    data['tld'] = this.tld;
    data['native'] = this.native;
    data['region'] = this.region;
    data['subregion'] = this.subregion;
    data['timezones'] = this.timezones;
    data['translations'] = this.translations;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['emoji'] = this.emoji;
    data['emojiU'] = this.emojiU;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['flag'] = this.flag;
    data['wikiDataId'] = this.wikiDataId;
    return data;
  }
}
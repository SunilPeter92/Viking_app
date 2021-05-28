class Conversation {
  String outgoingMsg;
  OutgoingDate outgoingDate;
  String incomingMsg;
  OutgoingDate incomingDate;

  Conversation(
      {this.outgoingMsg,
        this.outgoingDate,
        this.incomingMsg,
        this.incomingDate});

  Conversation.fromJson(Map<String, dynamic> json) {
    outgoingMsg = json['outgoing_msg'];
    outgoingDate = json['outgoing_Date'] != null
        ? new OutgoingDate.fromJson(json['outgoing_Date'])
        : null;
    incomingMsg = json['incoming_msg'];
    incomingDate = json['incoming_Date'] != null
        ? new OutgoingDate.fromJson(json['incoming_Date'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['outgoing_msg'] = this.outgoingMsg;
    if (this.outgoingDate != null) {
      data['outgoing_Date'] = this.outgoingDate.toJson();
    }
    data['incoming_msg'] = this.incomingMsg;
    if (this.incomingDate != null) {
      data['incoming_Date'] = this.incomingDate.toJson();
    }
    return data;
  }
}

class OutgoingDate {
  String date;
  int timezoneType;
  String timezone;

  OutgoingDate({this.date, this.timezoneType, this.timezone});

  OutgoingDate.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    timezoneType = json['timezone_type'];
    timezone = json['timezone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['timezone_type'] = this.timezoneType;
    data['timezone'] = this.timezone;
    return data;
  }
}
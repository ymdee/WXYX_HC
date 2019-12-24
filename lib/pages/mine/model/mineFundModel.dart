class MineFundModel {
  List<FundList> fundList;

  MineFundModel({this.fundList});

  MineFundModel.fromJson(Map<String, dynamic> json) {
    if (json['fundList'] != null) {
      fundList = new List<FundList>();
      json['fundList'].forEach((v) {
        fundList.add(new FundList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.fundList != null) {
      data['fundList'] = this.fundList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FundList {
  int fundType;
  String fundName;
  String fundValue;
  String targetJump;

  FundList({this.fundType, this.fundName, this.fundValue, this.targetJump});

  FundList.fromJson(Map<String, dynamic> json) {
    fundType = json['fundType'];
    fundName = json['fundName'];
    fundValue = json['fundValue'];
    targetJump = json['targetJump'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fundType'] = this.fundType;
    data['fundName'] = this.fundName;
    data['fundValue'] = this.fundValue;
    data['targetJump'] = this.targetJump;
    return data;
  }
}


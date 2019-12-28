class HomeGroupModel {
  List<String> avatars;
  List<PinList> pinList;

  HomeGroupModel({this.avatars, this.pinList});

  HomeGroupModel.fromJson(Map<String, dynamic> json) {
    avatars = json['avatars'].cast<String>();
    if (json['pinList'] != null) {
      pinList = new List<PinList>();
      json['pinList'].forEach((v) {
        pinList.add(new PinList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['avatars'] = this.avatars;
    if (this.pinList != null) {
      data['pinList'] = this.pinList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PinList {
  int categoryId;
  String description;
  int id;
  int itemId;
  int joinUsers;
  bool limitTime;
  int modeType;
  double originPrice;
  String picUrl;
  bool postageFree;
  double price;
  List<String> recentUsers;
  int recommendRank;
  double returnPrice;
  int skuNum;
  int status;
  String title;
  int userNum;

  PinList(
      {this.categoryId,
      this.description,
      this.id,
      this.itemId,
      this.joinUsers,
      this.limitTime,
      this.modeType,
      this.originPrice,
      this.picUrl,
      this.postageFree,
      this.price,
      this.recentUsers,
      this.recommendRank,
      this.returnPrice,
      this.skuNum,
      this.status,
      this.title,
      this.userNum});

  PinList.fromJson(Map<String, dynamic> json) {
    categoryId = json['categoryId'];
    description = json['description'];
    id = json['id'];
    itemId = json['itemId'];
    joinUsers = json['joinUsers'];
    limitTime = json['limitTime'];
    modeType = json['modeType'];
    originPrice = json['originPrice'];
    picUrl = json['picUrl'];
    postageFree = json['postageFree'];
    price = json['price'];
    recentUsers = json['recentUsers'].cast<String>();
    recommendRank = json['recommendRank'];
    returnPrice = json['returnPrice'].toDouble();
    skuNum = json['skuNum'];
    status = json['status'];
    title = json['title'];
    userNum = json['userNum'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categoryId'] = this.categoryId;
    data['description'] = this.description;
    data['id'] = this.id;
    data['itemId'] = this.itemId;
    data['joinUsers'] = this.joinUsers;
    data['limitTime'] = this.limitTime;
    data['modeType'] = this.modeType;
    data['originPrice'] = this.originPrice;
    data['picUrl'] = this.picUrl;
    data['postageFree'] = this.postageFree;
    data['price'] = this.price;
    data['recentUsers'] = this.recentUsers;
    data['recommendRank'] = this.recommendRank;
    data['returnPrice'] = this.returnPrice;
    data['skuNum'] = this.skuNum;
    data['status'] = this.status;
    data['title'] = this.title;
    data['userNum'] = this.userNum;
    return data;
  }
}


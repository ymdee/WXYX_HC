class HomeModel {
  CommonConfigModule commonConfigModule;
  List<KingKongAreaV4> kingKongAreaV4;
  TimePurchaseItems timePurchaseItems;
  List<Focus> focus;

  HomeModel(
      {this.commonConfigModule,
      this.kingKongAreaV4,
      this.timePurchaseItems,
      this.focus});

  HomeModel.fromJson(Map<String, dynamic> json) {
    commonConfigModule = json['commonConfigModule'] != null
        ? new CommonConfigModule.fromJson(json['commonConfigModule'])
        : null;
    if (json['kingKongAreaV4'] != null) {
      kingKongAreaV4 = new List<KingKongAreaV4>();
      json['kingKongAreaV4'].forEach((v) {
        kingKongAreaV4.add(new KingKongAreaV4.fromJson(v));
      });
    }
    timePurchaseItems = json['timePurchaseItems'] != null
        ? new TimePurchaseItems.fromJson(json['timePurchaseItems'])
        : null;
    if (json['focus'] != null) {
      focus = new List<Focus>();
      json['focus'].forEach((v) {
        focus.add(new Focus.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.commonConfigModule != null) {
      data['commonConfigModule'] = this.commonConfigModule.toJson();
    }
    if (this.kingKongAreaV4 != null) {
      data['kingKongAreaV4'] =
          this.kingKongAreaV4.map((v) => v.toJson()).toList();
    }
    if (this.timePurchaseItems != null) {
      data['timePurchaseItems'] = this.timePurchaseItems.toJson();
    }
    if (this.focus != null) {
      data['focus'] = this.focus.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CommonConfigModule {
  String bigPromotionColor;

  CommonConfigModule({this.bigPromotionColor});

  CommonConfigModule.fromJson(Map<String, dynamic> json) {
    bigPromotionColor = json['bigPromotionColor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bigPromotionColor'] = this.bigPromotionColor;
    return data;
  }
}

class KingKongAreaV4 {
  String targetJump;
  Payload payload;
  List<String> picUrls;
  String title;
  String desc;

  KingKongAreaV4(
      {this.targetJump, this.payload, this.picUrls, this.title, this.desc});

  KingKongAreaV4.fromJson(Map<String, dynamic> json) {
    targetJump = json['targetJump'];
    payload =
        json['payload'] != null ? new Payload.fromJson(json['payload']) : null;
    picUrls = json['picUrls'].cast<String>();
    title = json['title'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['targetJump'] = this.targetJump;
    if (this.payload != null) {
      data['payload'] = this.payload.toJson();
    }
    data['picUrls'] = this.picUrls;
    data['title'] = this.title;
    data['desc'] = this.desc;
    return data;
  }
}

class Payload {
  double type;

  Payload({this.type});

  Payload.fromJson(Map<String, dynamic> json) {
    type = json['type'].toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    return data;
  }
}

class TimePurchaseItems {
  int currentTime;
  int screenId;
  int flashSaleId;
  int leftTime;
  List<ItemList> itemList;

  TimePurchaseItems(
      {this.currentTime,
      this.screenId,
      this.flashSaleId,
      this.leftTime,
      this.itemList});

  TimePurchaseItems.fromJson(Map<String, dynamic> json) {
    currentTime = json['currentTime'];
    screenId = json['screenId'];
    flashSaleId = json['flashSaleId'];
    leftTime = json['leftTime'];
    if (json['itemList'] != null) {
      itemList = new List<ItemList>();
      json['itemList'].forEach((v) {
        itemList.add(new ItemList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['currentTime'] = this.currentTime;
    data['screenId'] = this.screenId;
    data['flashSaleId'] = this.flashSaleId;
    data['leftTime'] = this.leftTime;
    if (this.itemList != null) {
      data['itemList'] = this.itemList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ItemList {
  String listPicUrl;
  double actualPrice;
  String primaryPicUrl;
  String simpleDesc;
  int type;
  int totalSellVolume;
  bool valid;
  int itemId;
  String itemName;
  double differencePrice;
  int validEndTime;
  double retailPrice;
  int currentSellVolume;

  ItemList(
      {this.listPicUrl,
      this.actualPrice,
      this.primaryPicUrl,
      this.simpleDesc,
      this.type,
      this.totalSellVolume,
      this.valid,
      this.itemId,
      this.itemName,
      this.differencePrice,
      this.validEndTime,
      this.retailPrice,
      this.currentSellVolume});

  ItemList.fromJson(Map<String, dynamic> json) {
    listPicUrl = json['listPicUrl'];
    actualPrice = json['actualPrice'].toDouble();
    primaryPicUrl = json['primaryPicUrl'];
    simpleDesc = json['simpleDesc'];
    type = json['type'];
    totalSellVolume = json['totalSellVolume'];
    valid = json['valid'];
    itemId = json['itemId'];
    itemName = json['itemName'];
    differencePrice = json['differencePrice'];
    validEndTime = json['validEndTime'];
    retailPrice = json['retailPrice'].toDouble();;
    currentSellVolume = json['currentSellVolume'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['listPicUrl'] = this.listPicUrl;
    data['actualPrice'] = this.actualPrice;
    data['primaryPicUrl'] = this.primaryPicUrl;
    data['simpleDesc'] = this.simpleDesc;
    data['type'] = this.type;
    data['totalSellVolume'] = this.totalSellVolume;
    data['valid'] = this.valid;
    data['itemId'] = this.itemId;
    data['itemName'] = this.itemName;
    data['differencePrice'] = this.differencePrice;
    data['validEndTime'] = this.validEndTime;
    data['retailPrice'] = this.retailPrice;
    data['currentSellVolume'] = this.currentSellVolume;
    return data;
  }
}

class Focus {
  String backgroundColor;
  String img;
  int rank;
  int type;
  String content;

  Focus({this.backgroundColor, this.img, this.rank, this.type, this.content});

  Focus.fromJson(Map<String, dynamic> json) {
    backgroundColor = json['backgroundColor'];
    img = json['img'];
    rank = json['rank'];
    type = json['type'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['backgroundColor'] = this.backgroundColor;
    data['img'] = this.img;
    data['rank'] = this.rank;
    data['type'] = this.type;
    data['content'] = this.content;
    return data;
  }
}


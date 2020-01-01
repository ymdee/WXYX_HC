
class HomeRecGoodsModel {
  List<RcmdItemList> rcmdItemList;
  dynamic rcmdVer;
  dynamic title;
  int type;
  bool hasMore;

  HomeRecGoodsModel(
      {this.rcmdItemList, this.rcmdVer, this.title, this.type, this.hasMore});

  HomeRecGoodsModel.fromJson(Map<String, dynamic> json) {
    if (json['rcmdItemList'] != null) {
      rcmdItemList = new List<RcmdItemList>();
      json['rcmdItemList'].forEach((v) {
        rcmdItemList.add(new RcmdItemList.fromJson(v));
      });
    }
    rcmdVer = json['rcmdVer'];
    title = json['title'];
    type = json['type'];
    hasMore = json['hasMore'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.rcmdItemList != null) {
      data['rcmdItemList'] = this.rcmdItemList.map((v) => v.toJson()).toList();
    }
    data['rcmdVer'] = this.rcmdVer;
    data['title'] = this.title;
    data['type'] = this.type;
    data['hasMore'] = this.hasMore;
    return data;
  }
}

class RcmdItemList {
  int type;
  dynamic indexRcmdPic;
  CategoryItem categoryItem;
  PinItem pinItem;
  int id;

  RcmdItemList(
      {this.type, this.indexRcmdPic, this.categoryItem, this.pinItem, this.id});

  RcmdItemList.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    indexRcmdPic = json['indexRcmdPic'];
    categoryItem = json['categoryItem'] != null
        ? new CategoryItem.fromJson(json['categoryItem'])
        : null;
    pinItem =
        json['pinItem'] != null ? new PinItem.fromJson(json['pinItem']) : null;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['indexRcmdPic'] = this.indexRcmdPic;
    if (this.categoryItem != null) {
      data['categoryItem'] = this.categoryItem.toJson();
    }
    if (this.pinItem != null) {
      data['pinItem'] = this.pinItem.toJson();
    }
    data['id'] = this.id;
    return data;
  }
}

class CategoryItem {
  int id;
  String name;
  int categoryId;
  String primaryPicUrl;
  String listPicUrl;
  double retailPrice;
  String activityPrice;
  bool soldOut;
  bool few;
  bool last;
  String simpleDesc;
  bool simpleDescClose;
  String extraPrice;
  bool newOnShelf;
  bool forSale;
  String specification;
  bool unShelf;
  bool limitedFlag;
  String limitedTag;
  String productPlace;
  List<ItemTagList> itemTagList;
  dynamic goodRate;
  dynamic heat;
  dynamic repoCount;
  String scenePicUrl;
  bool freshman;
  bool appExclusiveFlag;
  int accessTime;
  int promotionFlag;
  String specTag;
  List<Comments> comments;
  Map promBanner;
  dynamic promLogo;
  dynamic promDesc;
  dynamic couponTag;
  dynamic couponPrice;
  bool limitedSingleProm;

  CategoryItem(
      {this.id,
      this.name,
      this.categoryId,
      this.primaryPicUrl,
      this.listPicUrl,
      this.retailPrice,
      this.activityPrice,
      this.soldOut,
      this.few,
      this.last,
      this.simpleDesc,
      this.simpleDescClose,
      this.extraPrice,
      this.newOnShelf,
      this.forSale,
      this.specification,
      this.unShelf,
      this.limitedFlag,
      this.limitedTag,
      this.productPlace,
      this.itemTagList,
      this.goodRate,
      this.heat,
      this.repoCount,
      this.scenePicUrl,
      this.freshman,
      this.appExclusiveFlag,
      this.accessTime,
      this.promotionFlag,
      this.specTag,
      this.comments,
      this.promBanner,
      this.promLogo,
      this.promDesc,
      this.couponTag,
      this.couponPrice,
      this.limitedSingleProm});

  CategoryItem.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    categoryId = json['categoryId'];
    primaryPicUrl = json['primaryPicUrl'];
    listPicUrl = json['listPicUrl'];
    retailPrice = json['retailPrice'].toDouble();
    activityPrice = json['activityPrice'];
    soldOut = json['soldOut'];
    few = json['few'];
    last = json['last'];
    simpleDesc = json['simpleDesc'];
    simpleDescClose = json['simpleDescClose'];
    extraPrice = json['extraPrice'];
    newOnShelf = json['newOnShelf'];
    forSale = json['forSale'];
    specification = json['specification'];
    unShelf = json['unShelf'];
    limitedFlag = json['limitedFlag'];
    limitedTag = json['limitedTag'];
    productPlace = json['productPlace'];
    if (json['itemTagList'] != null) {
      itemTagList = new List<ItemTagList>();
      json['itemTagList'].forEach((v) {
        itemTagList.add(new ItemTagList.fromJson(v));
      });
    }
    goodRate = json['goodRate'];
    heat = json['heat'];
    repoCount = json['repoCount'];
    scenePicUrl = json['scenePicUrl'];
    freshman = json['freshman'];
    appExclusiveFlag = json['appExclusiveFlag'];
    accessTime = json['accessTime'];
    promotionFlag = json['promotionFlag'];
    specTag = json['specTag'];
    if (json['comments'] != null) {
      comments = new List<Comments>();
      json['comments'].forEach((v) {
        comments.add(new Comments.fromJson(v));
      });
    }
    promBanner = json['promBanner'];
    promLogo = json['promLogo'];
    promDesc = json['promDesc'];
    couponTag = json['couponTag'];
    couponPrice = json['couponPrice'];
    limitedSingleProm = json['limitedSingleProm'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['categoryId'] = this.categoryId;
    data['primaryPicUrl'] = this.primaryPicUrl;
    data['listPicUrl'] = this.listPicUrl;
    data['retailPrice'] = this.retailPrice;
    data['activityPrice'] = this.activityPrice;
    data['soldOut'] = this.soldOut;
    data['few'] = this.few;
    data['last'] = this.last;
    data['simpleDesc'] = this.simpleDesc;
    data['simpleDescClose'] = this.simpleDescClose;
    data['extraPrice'] = this.extraPrice;
    data['newOnShelf'] = this.newOnShelf;
    data['forSale'] = this.forSale;
    data['specification'] = this.specification;
    data['unShelf'] = this.unShelf;
    data['limitedFlag'] = this.limitedFlag;
    data['limitedTag'] = this.limitedTag;
    data['productPlace'] = this.productPlace;
    if (this.itemTagList != null) {
      data['itemTagList'] = this.itemTagList.map((v) => v.toJson()).toList();
    }
    data['goodRate'] = this.goodRate;
    data['heat'] = this.heat;
    data['repoCount'] = this.repoCount;
    data['scenePicUrl'] = this.scenePicUrl;
    data['freshman'] = this.freshman;
    data['appExclusiveFlag'] = this.appExclusiveFlag;
    data['accessTime'] = this.accessTime;
    data['promotionFlag'] = this.promotionFlag;
    data['specTag'] = this.specTag;
    if (this.comments != null) {
      data['comments'] = this.comments.map((v) => v.toJson()).toList();
    }
    data['promBanner'] = this.promBanner;
    data['promLogo'] = this.promLogo;
    data['promDesc'] = this.promDesc;
    data['couponTag'] = this.couponTag;
    data['couponPrice'] = this.couponPrice;
    data['limitedSingleProm'] = this.limitedSingleProm;
    return data;
  }
}

class ItemTagList {
  int type;
  String name;
  String itemTag;
  dynamic itemTagType;
  bool freshmanExclusive;

  ItemTagList(
      {this.type,
      this.name,
      this.itemTag,
      this.itemTagType,
      this.freshmanExclusive});

  ItemTagList.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    name = json['name'];
    itemTag = json['itemTag'];
    itemTagType = json['itemTagType'];
    freshmanExclusive = json['freshmanExclusive'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['name'] = this.name;
    data['itemTag'] = this.itemTag;
    data['itemTagType'] = this.itemTagType;
    data['freshmanExclusive'] = this.freshmanExclusive;
    return data;
  }
}

class Comments {
  List<String> skuInfo;
  String frontUserName;
  String frontUserAvatar;
  String content;
  int createTime;
  List<String> picList;
  String kfReplyTitle;
  dynamic kfReplyContent;
  int memLevel;
  dynamic appendCommentVO;
  int star;

  Comments(
      {this.skuInfo,
      this.frontUserName,
      this.frontUserAvatar,
      this.content,
      this.createTime,
      this.picList,
      this.kfReplyTitle,
      this.kfReplyContent,
      this.memLevel,
      this.appendCommentVO,
      this.star});

  Comments.fromJson(Map<String, dynamic> json) {
    skuInfo = json['skuInfo'].cast<String>();
    frontUserName = json['frontUserName'];
    frontUserAvatar = json['frontUserAvatar'];
    content = json['content'];
    createTime = json['createTime'];
    picList = json['picList']?.cast<String>();
    kfReplyTitle = json['kfReplyTitle'];
    kfReplyContent = json['kfReplyContent'];
    memLevel = json['memLevel'];
    appendCommentVO = json['appendCommentVO'];
    star = json['star'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['skuInfo'] = this.skuInfo;
    data['frontUserName'] = this.frontUserName;
    data['frontUserAvatar'] = this.frontUserAvatar;
    data['content'] = this.content;
    data['createTime'] = this.createTime;
    data['picList'] = this.picList;
    data['kfReplyTitle'] = this.kfReplyTitle;
    data['kfReplyContent'] = this.kfReplyContent;
    data['memLevel'] = this.memLevel;
    data['appendCommentVO'] = this.appendCommentVO;
    data['star'] = this.star;
    return data;
  }
}

class PinItem {
  int id;
  String description;
  int categoryId;
  int userNum;
  String recentUsers;
  String picUrl;
  String title;
  int itemId;
  double price;
  double originPrice;
  double returnPrice;
  int skuNum;
  int joinUsers;
  bool limitTime;
  int modeType;
  int status;
  List<Comments> comments;

  PinItem(
      {this.id,
      this.description,
      this.categoryId,
      this.userNum,
      this.recentUsers,
      this.picUrl,
      this.title,
      this.itemId,
      this.price,
      this.originPrice,
      this.returnPrice,
      this.skuNum,
      this.joinUsers,
      this.limitTime,
      this.modeType,
      this.status,
      this.comments});

  PinItem.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    description = json['description'];
    categoryId = json['categoryId'];
    userNum = json['userNum'];
    recentUsers = json['recentUsers'];
    picUrl = json['picUrl'];
    title = json['title'];
    itemId = json['itemId'];
    price = json['price'].toDouble();
    originPrice = json['originPrice'].toDouble();
    returnPrice = json['returnPrice'].toDouble();
    skuNum = json['skuNum'];
    joinUsers = json['joinUsers'];
    limitTime = json['limitTime'];
    modeType = json['modeType'];
    status = json['status'];
    if (json['comments'] != null) {
      comments = new List<Comments>();
      json['comments'].forEach((v) {
        comments.add(new Comments.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['description'] = this.description;
    data['categoryId'] = this.categoryId;
    data['userNum'] = this.userNum;
    data['recentUsers'] = this.recentUsers;
    data['picUrl'] = this.picUrl;
    data['title'] = this.title;
    data['itemId'] = this.itemId;
    data['price'] = this.price;
    data['originPrice'] = this.originPrice;
    data['returnPrice'] = this.returnPrice;
    data['skuNum'] = this.skuNum;
    data['joinUsers'] = this.joinUsers;
    data['limitTime'] = this.limitTime;
    data['modeType'] = this.modeType;
    data['status'] = this.status;
    if (this.comments != null) {
      data['comments'] = this.comments.map((v) => v.toJson()).toList();
    }
    return data;
  }
}


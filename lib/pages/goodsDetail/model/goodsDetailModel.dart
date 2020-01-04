import 'package:json_annotation/json_annotation.dart'; 
  
part 'goodsDetailModel.g.dart';


@JsonSerializable()
  class GoodsDetailModel extends Object {

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'simpleDesc')
  String simpleDesc;

  @JsonKey(name: 'primaryPicUrl')
  String primaryPicUrl;

  @JsonKey(name: 'listPicUrl')
  String listPicUrl;

  @JsonKey(name: 'primarySkuId')
  int primarySkuId;

  @JsonKey(name: 'ceilingPrice')
  int ceilingPrice;

  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'soldOut')
  bool soldOut;

  @JsonKey(name: 'underShelf')
  bool underShelf;

  @JsonKey(name: 'itemDetail')
  Map itemDetail;

  @JsonKey(name: 'attrList')
  List<AttrList> attrList;

  @JsonKey(name: 'skuMap')
  Map skuMap;

  @JsonKey(name: 'skuSpecList')
  List<SkuSpecList> skuSpecList;

  @JsonKey(name: 'skuMaxCount')
  int skuMaxCount;

  @JsonKey(name: 'comments')
  List<Comments> comments;

  @JsonKey(name: 'extraPrice')
  String extraPrice;

  @JsonKey(name: 'tagList')
  List<dynamic> tagList;

  @JsonKey(name: 'promotionInfo')
  PromotionInfo promotionInfo;

  @JsonKey(name: 'policyList')
  List<PolicyList> policyList;

  @JsonKey(name: 'gift')
  bool gift;

  @JsonKey(name: 'newOnShelf')
  bool newOnShelf;

  @JsonKey(name: 'remarkSchemeUrl')
  String remarkSchemeUrl;

  @JsonKey(name: 'appExclusiveFlag')
  bool appExclusiveFlag;

  @JsonKey(name: 'suitList')
  List<dynamic> suitList;

  @JsonKey(name: 'commentCount')
  String commentCount;

  @JsonKey(name: 'featureList')
  List<FeatureList> featureList;

  @JsonKey(name: 'itemPromValid')
  bool itemPromValid;

  @JsonKey(name: 'defaultSelectSkuId')
  int defaultSelectSkuId;

  @JsonKey(name: 'retailPrice')
  String retailPrice;

  @JsonKey(name: 'itemStar')
  ItemStar itemStar;

  @JsonKey(name: 'pointsTip')
  String pointsTip;

  @JsonKey(name: 'itemSizeTableFlag')
  bool itemSizeTableFlag;

  @JsonKey(name: 'scheduleDeliveryStatus')
  int scheduleDeliveryStatus;

  @JsonKey(name: 'giftCardItemFlag')
  bool giftCardItemFlag;

  @JsonKey(name: 'itemRewardVO')
  ItemRewardVO itemRewardVO;

  @JsonKey(name: 'feedbackPkgFlag')
  bool feedbackPkgFlag;

  @JsonKey(name: 'feedbackBonusCardFlag')
  bool feedbackBonusCardFlag;

  @JsonKey(name: 'couponLimit')
  String couponLimit;

  @JsonKey(name: 'picMode')
  int picMode;

  @JsonKey(name: 'adBanners')
  List<AdBanners> adBanners;

  @JsonKey(name: 'rewardTag')
  String rewardTag;

  @JsonKey(name: 'rewardTagDesc')
  RewardTagDesc rewardTagDesc;

  @JsonKey(name: 'spmcText')
  String spmcText;

  @JsonKey(name: 'itemDiscount')
  ItemDiscount itemDiscount;

  @JsonKey(name: 'couponSimpleList')
  List<String> couponSimpleList;

  @JsonKey(name: 'bigPromotion')
  BigPromotion bigPromotion;

  @JsonKey(name: 'promoTips')
  List<dynamic> promoTips;

  @JsonKey(name: 'recommendReasons')
  List<String> recommendReasons;

  @JsonKey(name: 'staffRecommendEntrance')
  StaffRecommendEntrance staffRecommendEntrance;

  @JsonKey(name: 'shoppingReward')
  ShoppingReward shoppingReward;

  @JsonKey(name: 'shoppingRewardRule')
  ShoppingRewardRule shoppingRewardRule;

  GoodsDetailModel(this.id,this.name,this.simpleDesc,this.primaryPicUrl,this.listPicUrl,this.primarySkuId,this.ceilingPrice,this.status,this.soldOut,this.underShelf,this.itemDetail,this.attrList,this.skuSpecList,this.skuMaxCount,this.comments,this.extraPrice,this.tagList,this.promotionInfo,this.policyList,this.gift,this.newOnShelf,this.remarkSchemeUrl,this.appExclusiveFlag,this.suitList,this.commentCount,this.featureList,this.itemPromValid,this.defaultSelectSkuId,this.retailPrice,this.itemStar,this.pointsTip,this.itemSizeTableFlag,this.scheduleDeliveryStatus,this.giftCardItemFlag,this.itemRewardVO,this.feedbackPkgFlag,this.feedbackBonusCardFlag,this.couponLimit,this.picMode,this.adBanners,this.rewardTag,this.rewardTagDesc,this.spmcText,this.itemDiscount,this.couponSimpleList,this.bigPromotion,this.promoTips,this.recommendReasons,this.staffRecommendEntrance,this.shoppingReward,this.shoppingRewardRule,);

  factory GoodsDetailModel.fromJson(Map<String, dynamic> srcJson) => _$GoodsDetailModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$GoodsDetailModelToJson(this);

}

  
@JsonSerializable()
  class AttrList extends Object {

  @JsonKey(name: 'attrName')
  String attrName;

  @JsonKey(name: 'attrValue')
  String attrValue;

  AttrList(this.attrName,this.attrValue,);

  factory AttrList.fromJson(Map<String, dynamic> srcJson) => _$AttrListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$AttrListToJson(this);

}

  
@JsonSerializable()
  class SkuSpecList extends Object {

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'type')
  int type;

  @JsonKey(name: 'skuSpecValueList')
  List<SkuSpecValueList> skuSpecValueList;

  SkuSpecList(this.id,this.name,this.type,this.skuSpecValueList,);

  factory SkuSpecList.fromJson(Map<String, dynamic> srcJson) => _$SkuSpecListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SkuSpecListToJson(this);

}

  
@JsonSerializable()
  class SkuSpecValueList extends Object {

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'skuSpecId')
  int skuSpecId;

  @JsonKey(name: 'value')
  String value;

  SkuSpecValueList(this.id,this.skuSpecId,this.value,);

  factory SkuSpecValueList.fromJson(Map<String, dynamic> srcJson) => _$SkuSpecValueListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SkuSpecValueListToJson(this);

}

  
@JsonSerializable()
  class Comments extends Object {

  @JsonKey(name: 'skuInfo')
  List<String> skuInfo;

  @JsonKey(name: 'frontUserName')
  String frontUserName;

  @JsonKey(name: 'frontUserAvatar')
  String frontUserAvatar;

  @JsonKey(name: 'content')
  String content;

  @JsonKey(name: 'createTime')
  int createTime;

  @JsonKey(name: 'picList')
  List<String> picList;

  @JsonKey(name: 'memLevel')
  int memLevel;

  @JsonKey(name: 'star')
  int star;

  Comments(this.skuInfo,this.frontUserName,this.frontUserAvatar,this.content,this.createTime,this.picList,this.memLevel,this.star,);

  factory Comments.fromJson(Map<String, dynamic> srcJson) => _$CommentsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CommentsToJson(this);

}

  
@JsonSerializable()
  class PromotionInfo extends Object {

  @JsonKey(name: 'promotionList')
  List<PromotionList> promotionList;

  @JsonKey(name: 'countDesc')
  String countDesc;

  @JsonKey(name: 'shareDesc')
  String shareDesc;

  PromotionInfo(this.promotionList,this.countDesc,this.shareDesc,);

  factory PromotionInfo.fromJson(Map<String, dynamic> srcJson) => _$PromotionInfoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PromotionInfoToJson(this);

}

  
@JsonSerializable()
  class PromotionList extends Object {

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'tag')
  String tag;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'targetUrl')
  String targetUrl;

  PromotionList(this.id,this.tag,this.name,this.targetUrl,);

  factory PromotionList.fromJson(Map<String, dynamic> srcJson) => _$PromotionListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PromotionListToJson(this);

}

  
@JsonSerializable()
  class PolicyList extends Object {

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'content')
  String content;

  PolicyList(this.title,this.content,);

  factory PolicyList.fromJson(Map<String, dynamic> srcJson) => _$PolicyListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PolicyListToJson(this);

}

  
@JsonSerializable()
  class FeatureList extends Object {

  @JsonKey(name: 'icon')
  String icon;

  @JsonKey(name: 'text1')
  String text1;

  @JsonKey(name: 'text2')
  String text2;

  FeatureList(this.icon,this.text1,this.text2,);

  factory FeatureList.fromJson(Map<String, dynamic> srcJson) => _$FeatureListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$FeatureListToJson(this);

}

  
@JsonSerializable()
  class ItemStar extends Object {

  @JsonKey(name: 'goodCmtRate')
  String goodCmtRate;

  @JsonKey(name: 'star')
  int star;

  ItemStar(this.goodCmtRate,this.star,);

  factory ItemStar.fromJson(Map<String, dynamic> srcJson) => _$ItemStarFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ItemStarToJson(this);

}

  
@JsonSerializable()
  class ItemRewardVO extends Object {

  @JsonKey(name: 'rewardText')
  String rewardText;

  @JsonKey(name: 'rewardAmount')
  String rewardAmount;

  @JsonKey(name: 'rewardDesc')
  RewardDesc rewardDesc;

  ItemRewardVO(this.rewardText,this.rewardAmount,this.rewardDesc,);

  factory ItemRewardVO.fromJson(Map<String, dynamic> srcJson) => _$ItemRewardVOFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ItemRewardVOToJson(this);

}

  
@JsonSerializable()
  class RewardDesc extends Object {

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'ruleList')
  List<String> ruleList;

  RewardDesc(this.title,this.ruleList,);

  factory RewardDesc.fromJson(Map<String, dynamic> srcJson) => _$RewardDescFromJson(srcJson);

  Map<String, dynamic> toJson() => _$RewardDescToJson(this);

}

  
@JsonSerializable()
  class AdBanners extends Object {

  @JsonKey(name: 'picUrl')
  String picUrl;

  @JsonKey(name: 'targetJump')
  String targetJump;

  AdBanners(this.picUrl,this.targetJump,);

  factory AdBanners.fromJson(Map<String, dynamic> srcJson) => _$AdBannersFromJson(srcJson);

  Map<String, dynamic> toJson() => _$AdBannersToJson(this);

}

  
@JsonSerializable()
  class RewardTagDesc extends Object {

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'ruleList')
  List<String> ruleList;

  RewardTagDesc(this.title,this.ruleList,);

  factory RewardTagDesc.fromJson(Map<String, dynamic> srcJson) => _$RewardTagDescFromJson(srcJson);

  Map<String, dynamic> toJson() => _$RewardTagDescToJson(this);

}

  
@JsonSerializable()
  class ItemDiscount extends Object {

  @JsonKey(name: 'promotionList')
  List<PromotionList> promotionList;

  @JsonKey(name: 'couponSimpleList')
  List<String> couponSimpleList;

  ItemDiscount(this.promotionList,this.couponSimpleList,);

  factory ItemDiscount.fromJson(Map<String, dynamic> srcJson) => _$ItemDiscountFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ItemDiscountToJson(this);

}
  
@JsonSerializable()
  class BigPromotion extends Object {

  @JsonKey(name: 'bannerType')
  int bannerType;

  @JsonKey(name: 'bannerTitleUrl')
  String bannerTitleUrl;

  @JsonKey(name: 'bannerContentUrl')
  String bannerContentUrl;

  @JsonKey(name: 'promoTitle')
  String promoTitle;

  @JsonKey(name: 'promoSubTitle')
  String promoSubTitle;

  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'sellVolumePercent')
  double sellVolumePercent;

  @JsonKey(name: 'startTime')
  String startTime;

  @JsonKey(name: 'countdown')
  int countdown;

  @JsonKey(name: 'schemeUrl')
  String schemeUrl;

  @JsonKey(name: 'retailPrice')
  String retailPrice;

  @JsonKey(name: 'activityPrice')
  String activityPrice;

  @JsonKey(name: 'styleType')
  int styleType;

  @JsonKey(name: 'ingCountdown')
  int ingCountdown;

  @JsonKey(name: 'maxDisplayTime')
  int maxDisplayTime;

  @JsonKey(name: 'sellVolume')
  int sellVolume;

  @JsonKey(name: 'satisfy')
  bool satisfy;

  BigPromotion(this.bannerType,this.bannerTitleUrl,this.bannerContentUrl,this.promoTitle,this.promoSubTitle,this.status,this.sellVolumePercent,this.startTime,this.countdown,this.schemeUrl,this.retailPrice,this.activityPrice,this.styleType,this.ingCountdown,this.maxDisplayTime,this.sellVolume,this.satisfy,);

  factory BigPromotion.fromJson(Map<String, dynamic> srcJson) => _$BigPromotionFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BigPromotionToJson(this);

}

  
@JsonSerializable()
  class StaffRecommendEntrance extends Object {

  @JsonKey(name: 'version')
  String version;

  @JsonKey(name: 'schemeUrl')
  String schemeUrl;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'moreText')
  String moreText;

  @JsonKey(name: 'canShow')
  bool canShow;

  StaffRecommendEntrance(this.version,this.schemeUrl,this.title,this.moreText,this.canShow,);

  factory StaffRecommendEntrance.fromJson(Map<String, dynamic> srcJson) => _$StaffRecommendEntranceFromJson(srcJson);

  Map<String, dynamic> toJson() => _$StaffRecommendEntranceToJson(this);

}

  
@JsonSerializable()
  class ShoppingReward extends Object {

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'rewardDesc')
  String rewardDesc;

  @JsonKey(name: 'rewardValue')
  String rewardValue;

  ShoppingReward(this.name,this.rewardDesc,this.rewardValue,);

  factory ShoppingReward.fromJson(Map<String, dynamic> srcJson) => _$ShoppingRewardFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ShoppingRewardToJson(this);

}

  
@JsonSerializable()
  class ShoppingRewardRule extends Object {

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'ruleList')
  List<RuleList> ruleList;

  ShoppingRewardRule(this.title,this.ruleList,);

  factory ShoppingRewardRule.fromJson(Map<String, dynamic> srcJson) => _$ShoppingRewardRuleFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ShoppingRewardRuleToJson(this);

}

  
@JsonSerializable()
  class RuleList extends Object {

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'content')
  String content;

  RuleList(this.title,this.content,);

  factory RuleList.fromJson(Map<String, dynamic> srcJson) => _$RuleListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$RuleListToJson(this);

}

  

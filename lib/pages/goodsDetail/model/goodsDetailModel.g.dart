// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goodsDetailModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GoodsDetailModel _$GoodsDetailModelFromJson(Map<String, dynamic> json) {
  return GoodsDetailModel(
    json['id'] as int,
    json['name'] as String,
    json['simpleDesc'] as String,
    json['primaryPicUrl'] as String,
    json['listPicUrl'] as String,
    json['primarySkuId'] as int,
    json['ceilingPrice'] as int,
    json['status'] as int,
    json['soldOut'] as bool,
    json['underShelf'] as bool,
    json['itemDetail'] == null
        ? null
        : ItemDetail.fromJson(json['itemDetail'] as Map<String, dynamic>),
    (json['attrList'] as List)
        ?.map((e) =>
            e == null ? null : AttrList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['skuSpecList'] as List)
        ?.map((e) =>
            e == null ? null : SkuSpecList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['skuMaxCount'] as int,
    (json['comments'] as List)
        ?.map((e) =>
            e == null ? null : Comments.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['extraPrice'] as String,
    json['tagList'] as List,
    json['promotionInfo'] == null
        ? null
        : PromotionInfo.fromJson(json['promotionInfo'] as Map<String, dynamic>),
    (json['policyList'] as List)
        ?.map((e) =>
            e == null ? null : PolicyList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['gift'] as bool,
    json['newOnShelf'] as bool,
    json['remarkSchemeUrl'] as String,
    json['appExclusiveFlag'] as bool,
    json['suitList'] as List,
    json['commentCount'] as String,
    (json['featureList'] as List)
        ?.map((e) =>
            e == null ? null : FeatureList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['itemPromValid'] as bool,
    json['defaultSelectSkuId'] as int,
    json['retailPrice'] as String,
    json['itemStar'] == null
        ? null
        : ItemStar.fromJson(json['itemStar'] as Map<String, dynamic>),
    json['pointsTip'] as String,
    json['itemSizeTableFlag'] as bool,
    json['scheduleDeliveryStatus'] as int,
    json['giftCardItemFlag'] as bool,
    json['itemRewardVO'] == null
        ? null
        : ItemRewardVO.fromJson(json['itemRewardVO'] as Map<String, dynamic>),
    json['feedbackPkgFlag'] as bool,
    json['feedbackBonusCardFlag'] as bool,
    json['couponLimit'] as String,
    json['picMode'] as int,
    (json['adBanners'] as List)
        ?.map((e) =>
            e == null ? null : AdBanners.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['rewardTag'] as String,
    json['rewardTagDesc'] == null
        ? null
        : RewardTagDesc.fromJson(json['rewardTagDesc'] as Map<String, dynamic>),
    json['spmcText'] as String,
    json['itemDiscount'] == null
        ? null
        : ItemDiscount.fromJson(json['itemDiscount'] as Map<String, dynamic>),
    (json['couponSimpleList'] as List)?.map((e) => e as String)?.toList(),
    json['bigPromotion'] == null
        ? null
        : BigPromotion.fromJson(json['bigPromotion'] as Map<String, dynamic>),
    json['promoTips'] as List,
    (json['recommendReasons'] as List)?.map((e) => e as String)?.toList(),
    json['staffRecommendEntrance'] == null
        ? null
        : StaffRecommendEntrance.fromJson(
            json['staffRecommendEntrance'] as Map<String, dynamic>),
    json['shoppingReward'] == null
        ? null
        : ShoppingReward.fromJson(
            json['shoppingReward'] as Map<String, dynamic>),
    json['shoppingRewardRule'] == null
        ? null
        : ShoppingRewardRule.fromJson(
            json['shoppingRewardRule'] as Map<String, dynamic>),
  )..skuMap = json['skuMap'] as Map<String, dynamic>;
}

Map<String, dynamic> _$GoodsDetailModelToJson(GoodsDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'simpleDesc': instance.simpleDesc,
      'primaryPicUrl': instance.primaryPicUrl,
      'listPicUrl': instance.listPicUrl,
      'primarySkuId': instance.primarySkuId,
      'ceilingPrice': instance.ceilingPrice,
      'status': instance.status,
      'soldOut': instance.soldOut,
      'underShelf': instance.underShelf,
      'itemDetail': instance.itemDetail,
      'attrList': instance.attrList,
      'skuMap': instance.skuMap,
      'skuSpecList': instance.skuSpecList,
      'skuMaxCount': instance.skuMaxCount,
      'comments': instance.comments,
      'extraPrice': instance.extraPrice,
      'tagList': instance.tagList,
      'promotionInfo': instance.promotionInfo,
      'policyList': instance.policyList,
      'gift': instance.gift,
      'newOnShelf': instance.newOnShelf,
      'remarkSchemeUrl': instance.remarkSchemeUrl,
      'appExclusiveFlag': instance.appExclusiveFlag,
      'suitList': instance.suitList,
      'commentCount': instance.commentCount,
      'featureList': instance.featureList,
      'itemPromValid': instance.itemPromValid,
      'defaultSelectSkuId': instance.defaultSelectSkuId,
      'retailPrice': instance.retailPrice,
      'itemStar': instance.itemStar,
      'pointsTip': instance.pointsTip,
      'itemSizeTableFlag': instance.itemSizeTableFlag,
      'scheduleDeliveryStatus': instance.scheduleDeliveryStatus,
      'giftCardItemFlag': instance.giftCardItemFlag,
      'itemRewardVO': instance.itemRewardVO,
      'feedbackPkgFlag': instance.feedbackPkgFlag,
      'feedbackBonusCardFlag': instance.feedbackBonusCardFlag,
      'couponLimit': instance.couponLimit,
      'picMode': instance.picMode,
      'adBanners': instance.adBanners,
      'rewardTag': instance.rewardTag,
      'rewardTagDesc': instance.rewardTagDesc,
      'spmcText': instance.spmcText,
      'itemDiscount': instance.itemDiscount,
      'couponSimpleList': instance.couponSimpleList,
      'bigPromotion': instance.bigPromotion,
      'promoTips': instance.promoTips,
      'recommendReasons': instance.recommendReasons,
      'staffRecommendEntrance': instance.staffRecommendEntrance,
      'shoppingReward': instance.shoppingReward,
      'shoppingRewardRule': instance.shoppingRewardRule,
    };

ItemDetail _$ItemDetailFromJson(Map<String, dynamic> json) {
  return ItemDetail(
    json['detailHtml'] as String,
    json['picUrl1'] as String,
    json['picUrl2'] as String,
    json['picUrl3'] as String,
    json['picUrl4'] as String,
  );
}

Map<String, dynamic> _$ItemDetailToJson(ItemDetail instance) =>
    <String, dynamic>{
      'detailHtml': instance.detailHtml,
      'picUrl1': instance.picUrl1,
      'picUrl2': instance.picUrl2,
      'picUrl3': instance.picUrl3,
      'picUrl4': instance.picUrl4,
    };

AttrList _$AttrListFromJson(Map<String, dynamic> json) {
  return AttrList(
    json['attrName'] as String,
    json['attrValue'] as String,
  );
}

Map<String, dynamic> _$AttrListToJson(AttrList instance) => <String, dynamic>{
      'attrName': instance.attrName,
      'attrValue': instance.attrValue,
    };

SkuSpecList _$SkuSpecListFromJson(Map<String, dynamic> json) {
  return SkuSpecList(
    json['id'] as int,
    json['name'] as String,
    json['type'] as int,
    (json['skuSpecValueList'] as List)
        ?.map((e) => e == null
            ? null
            : SkuSpecValueList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SkuSpecListToJson(SkuSpecList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'skuSpecValueList': instance.skuSpecValueList,
    };

SkuSpecValueList _$SkuSpecValueListFromJson(Map<String, dynamic> json) {
  return SkuSpecValueList(
    json['id'] as int,
    json['skuSpecId'] as int,
    json['value'] as String,
  );
}

Map<String, dynamic> _$SkuSpecValueListToJson(SkuSpecValueList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'skuSpecId': instance.skuSpecId,
      'value': instance.value,
    };

Comments _$CommentsFromJson(Map<String, dynamic> json) {
  return Comments(
    (json['skuInfo'] as List)?.map((e) => e as String)?.toList(),
    json['frontUserName'] as String,
    json['frontUserAvatar'] as String,
    json['content'] as String,
    json['createTime'] as int,
    (json['picList'] as List)?.map((e) => e as String)?.toList(),
    json['memLevel'] as int,
    json['star'] as int,
  );
}

Map<String, dynamic> _$CommentsToJson(Comments instance) => <String, dynamic>{
      'skuInfo': instance.skuInfo,
      'frontUserName': instance.frontUserName,
      'frontUserAvatar': instance.frontUserAvatar,
      'content': instance.content,
      'createTime': instance.createTime,
      'picList': instance.picList,
      'memLevel': instance.memLevel,
      'star': instance.star,
    };

PromotionInfo _$PromotionInfoFromJson(Map<String, dynamic> json) {
  return PromotionInfo(
    (json['promotionList'] as List)
        ?.map((e) => e == null
            ? null
            : PromotionList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['countDesc'] as String,
    json['shareDesc'] as String,
  );
}

Map<String, dynamic> _$PromotionInfoToJson(PromotionInfo instance) =>
    <String, dynamic>{
      'promotionList': instance.promotionList,
      'countDesc': instance.countDesc,
      'shareDesc': instance.shareDesc,
    };

PromotionList _$PromotionListFromJson(Map<String, dynamic> json) {
  return PromotionList(
    json['id'] as int,
    json['tag'] as String,
    json['name'] as String,
    json['targetUrl'] as String,
  );
}

Map<String, dynamic> _$PromotionListToJson(PromotionList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tag': instance.tag,
      'name': instance.name,
      'targetUrl': instance.targetUrl,
    };

PolicyList _$PolicyListFromJson(Map<String, dynamic> json) {
  return PolicyList(
    json['title'] as String,
    json['content'] as String,
  );
}

Map<String, dynamic> _$PolicyListToJson(PolicyList instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
    };

FeatureList _$FeatureListFromJson(Map<String, dynamic> json) {
  return FeatureList(
    json['icon'] as String,
    json['text1'] as String,
    json['text2'] as String,
  );
}

Map<String, dynamic> _$FeatureListToJson(FeatureList instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'text1': instance.text1,
      'text2': instance.text2,
    };

ItemStar _$ItemStarFromJson(Map<String, dynamic> json) {
  return ItemStar(
    json['goodCmtRate'] as String,
    json['star'] as int,
  );
}

Map<String, dynamic> _$ItemStarToJson(ItemStar instance) => <String, dynamic>{
      'goodCmtRate': instance.goodCmtRate,
      'star': instance.star,
    };

ItemRewardVO _$ItemRewardVOFromJson(Map<String, dynamic> json) {
  return ItemRewardVO(
    json['rewardText'] as String,
    json['rewardAmount'] as String,
    json['rewardDesc'] == null
        ? null
        : RewardDesc.fromJson(json['rewardDesc'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ItemRewardVOToJson(ItemRewardVO instance) =>
    <String, dynamic>{
      'rewardText': instance.rewardText,
      'rewardAmount': instance.rewardAmount,
      'rewardDesc': instance.rewardDesc,
    };

RewardDesc _$RewardDescFromJson(Map<String, dynamic> json) {
  return RewardDesc(
    json['title'] as String,
    (json['ruleList'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$RewardDescToJson(RewardDesc instance) =>
    <String, dynamic>{
      'title': instance.title,
      'ruleList': instance.ruleList,
    };

AdBanners _$AdBannersFromJson(Map<String, dynamic> json) {
  return AdBanners(
    json['picUrl'] as String,
    json['targetJump'] as String,
  );
}

Map<String, dynamic> _$AdBannersToJson(AdBanners instance) => <String, dynamic>{
      'picUrl': instance.picUrl,
      'targetJump': instance.targetJump,
    };

RewardTagDesc _$RewardTagDescFromJson(Map<String, dynamic> json) {
  return RewardTagDesc(
    json['title'] as String,
    (json['ruleList'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$RewardTagDescToJson(RewardTagDesc instance) =>
    <String, dynamic>{
      'title': instance.title,
      'ruleList': instance.ruleList,
    };

ItemDiscount _$ItemDiscountFromJson(Map<String, dynamic> json) {
  return ItemDiscount(
    (json['promotionList'] as List)
        ?.map((e) => e == null
            ? null
            : PromotionList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['couponSimpleList'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$ItemDiscountToJson(ItemDiscount instance) =>
    <String, dynamic>{
      'promotionList': instance.promotionList,
      'couponSimpleList': instance.couponSimpleList,
    };


BigPromotion _$BigPromotionFromJson(Map<String, dynamic> json) {
  return BigPromotion(
    json['bannerType'] as int,
    json['bannerTitleUrl'] as String,
    json['bannerContentUrl'] as String,
    json['promoTitle'] as String,
    json['promoSubTitle'] as String,
    json['status'] as int,
    json['sellVolumePercent'] as int,
    json['startTime'] as String,
    json['countdown'] as int,
    json['schemeUrl'] as String,
    json['retailPrice'] as String,
    json['activityPrice'] as String,
    json['styleType'] as int,
    json['ingCountdown'] as int,
    json['maxDisplayTime'] as int,
    json['sellVolume'] as int,
    json['satisfy'] as bool,
  );
}

Map<String, dynamic> _$BigPromotionToJson(BigPromotion instance) =>
    <String, dynamic>{
      'bannerType': instance.bannerType,
      'bannerTitleUrl': instance.bannerTitleUrl,
      'bannerContentUrl': instance.bannerContentUrl,
      'promoTitle': instance.promoTitle,
      'promoSubTitle': instance.promoSubTitle,
      'status': instance.status,
      'sellVolumePercent': instance.sellVolumePercent,
      'startTime': instance.startTime,
      'countdown': instance.countdown,
      'schemeUrl': instance.schemeUrl,
      'retailPrice': instance.retailPrice,
      'activityPrice': instance.activityPrice,
      'styleType': instance.styleType,
      'ingCountdown': instance.ingCountdown,
      'maxDisplayTime': instance.maxDisplayTime,
      'sellVolume': instance.sellVolume,
      'satisfy': instance.satisfy,
    };

StaffRecommendEntrance _$StaffRecommendEntranceFromJson(
    Map<String, dynamic> json) {
  return StaffRecommendEntrance(
    json['version'] as String,
    json['schemeUrl'] as String,
    json['title'] as String,
    json['moreText'] as String,
    json['canShow'] as bool,
  );
}

Map<String, dynamic> _$StaffRecommendEntranceToJson(
        StaffRecommendEntrance instance) =>
    <String, dynamic>{
      'version': instance.version,
      'schemeUrl': instance.schemeUrl,
      'title': instance.title,
      'moreText': instance.moreText,
      'canShow': instance.canShow,
    };

ShoppingReward _$ShoppingRewardFromJson(Map<String, dynamic> json) {
  return ShoppingReward(
    json['name'] as String,
    json['rewardDesc'] as String,
    json['rewardValue'] as String,
  );
}

Map<String, dynamic> _$ShoppingRewardToJson(ShoppingReward instance) =>
    <String, dynamic>{
      'name': instance.name,
      'rewardDesc': instance.rewardDesc,
      'rewardValue': instance.rewardValue,
    };

ShoppingRewardRule _$ShoppingRewardRuleFromJson(Map<String, dynamic> json) {
  return ShoppingRewardRule(
    json['title'] as String,
    (json['ruleList'] as List)
        ?.map((e) =>
            e == null ? null : RuleList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ShoppingRewardRuleToJson(ShoppingRewardRule instance) =>
    <String, dynamic>{
      'title': instance.title,
      'ruleList': instance.ruleList,
    };

RuleList _$RuleListFromJson(Map<String, dynamic> json) {
  return RuleList(
    json['title'] as String,
    json['content'] as String,
  );
}

Map<String, dynamic> _$RuleListToJson(RuleList instance) => <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
    };

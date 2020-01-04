import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import '../model/goodsDetailModel.dart';
import 'package:wyyx_hc/provide/goodsDetailProvide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GoodsDetailAdBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GoodsDetailModel goodsDetailModel =
        Provide.value<GoodsDetailProvide>(context).goodsDetailModel;

    List<Widget> list = [];
    for (var i = 0; i < goodsDetailModel.adBanners.length; i++) {
      AdBanners adBanners = goodsDetailModel.adBanners[i];

      list.add(CachedNetworkImage(
        fit: BoxFit.cover,
        imageUrl: adBanners.picUrl,
      ));
    }

    return Container(
      color: Colors.grey[100],
      padding: EdgeInsets.only(top: 12),
      child: Container(
        child: Column(
          children: list.length > 0
              ? list
              : SizedBox(
                  height: 0,
                ),
        ),
      ),
    );
  }
}

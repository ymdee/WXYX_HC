import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:provide/provide.dart';
import '../model/goodsDetailModel.dart';
import 'package:wyyx_hc/provide/goodsDetailProvide.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GoodsDetailBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GoodsDetailModel goodsDetailModel =
        Provide.value<GoodsDetailProvide>(context).goodsDetailModel;

    List<String> imgList = [goodsDetailModel.primaryPicUrl];
    bool flag = true;
    int i = 1;
    while (flag) {
      String key = 'picUrl$i';
      if (goodsDetailModel.itemDetail.containsKey(key)) {
        imgList.add(goodsDetailModel.itemDetail[key]);
        i++;
      } else {
        flag = false;
      }
    }

    return Container(
      color: Colors.grey[100],
      height: ScreenUtil().setHeight(750),
      child: Swiper(
        itemCount: imgList.length,
        autoplay: false,
        pagination: SwiperPagination(
            margin: EdgeInsets.all(15),
            alignment: Alignment.bottomRight,
            builder: FractionPaginationBuilder(
                activeFontSize: 15,
                fontSize: 15,
                color: Colors.black,
                activeColor: Colors.black)),
        itemBuilder: (context, index) {
          return CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: imgList[index],
              placeholder: (context, url) {
                return Image.asset(
                  'images/default_goods.jpeg',
                );
              },
              errorWidget: (context, url, obj) {
                return Image.asset(
                  'images/default_goods.jpeg',
                );
              });
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:wyyx_hc/provide/categoryProvide.dart';
import '../model/categoryItemListModel.dart';
import 'package:provide/provide.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CategoryBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CategoryItemListModel categoryItemListModel =
        Provide.value<CategoryProvide>(context).categoryItemListModel;
     final focusBannerList = categoryItemListModel.category.focusBannerList;

    return Container(
      height: ScreenUtil().setWidth(200),
      margin: EdgeInsets.all(ScreenUtil().setWidth(25)),
      child: Swiper(
        itemCount: focusBannerList.length,
        autoplay: focusBannerList.length>1?true:false,
        pagination: focusBannerList.length>1?SwiperPagination(
            builder: DotSwiperPaginationBuilder(activeColor: Colors.red)):null,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              //跳转webview
            },
            child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl:
                    '${focusBannerList[index].picUrl}',
                placeholder: (context, url) {
                  return Image.asset(
                    'images/default_goods.jpeg',
                  );
                },
                errorWidget: (context, url, obj) {
                  return Image.asset(
                    'images/default_goods.jpeg',
                  );
                }),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:provide/provide.dart';
import 'package:wyyx_hc/pages/home/model/homeModel.dart';
import '../../../provide/homeProvide.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomeBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomeModel homeModel = Provide.value<HomeProvide>(context).homeModel;

    return Container(
      height: ScreenUtil().setWidth(350),
      child: Swiper(
        duration: 300,
        pagination: SwiperPagination(builder: DotSwiperPaginationBuilder(
          activeColor: Colors.red
        )),
        itemCount: homeModel.focus.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              //跳转webview
            },
            child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: '${homeModel.focus[index].img}',
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
        autoplay: true,
        onIndexChanged: (index) {
          //监听banner滑动，获取后台给的bannner对应颜色
          String color = homeModel.focus[index].backgroundColor;
          String tempColor = '0xFF' + color.substring(1);
          Provide.value<HomeProvide>(context)
              .changeSearchBarBackColor(Color(int.parse(tempColor)));
        },
      ),
    );
  }
}

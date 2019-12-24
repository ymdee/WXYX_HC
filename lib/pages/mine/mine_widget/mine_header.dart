import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provide/provide.dart';
import '../model/mineDetailModel.dart';
import '../../../provide/mineProvide.dart';

class MineHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MineDetailModel mineDetailModel =
        Provide.value<MineProvide>(context).mineDetailModel;

    return Container(
      padding: EdgeInsets.only(left: 15),
      alignment: Alignment.center,
      height: ScreenUtil().setHeight(230),
      color: Color(0xFFDFC891),
      child: Row(
        children: <Widget>[
          ClipOval(
            child: CachedNetworkImage(
              width: ScreenUtil().setWidth(120),
              imageUrl: mineDetailModel.avatar ?? '',
              placeholder: (context, url) {
                return CircularProgressIndicator();
              },
              errorWidget: (context, url, obj) {
                return Image.asset(
                  'images/default_head.jpeg',
                  width: ScreenUtil().setWidth(120),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(mineDetailModel.nickname,
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(30),
                        color: Colors.black54)),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  alignment: Alignment.center,
                  width: ScreenUtil().setWidth(140),
                  height: ScreenUtil().setHeight(35),
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1, color: Color.fromRGBO(181, 162, 118, 1)),
                      borderRadius:
                          BorderRadius.circular(ScreenUtil().setHeight(35))),
                  child: Text(
                    '更新头像昵称',
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(20),
                        color: Color.fromRGBO(181, 162, 118, 1)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

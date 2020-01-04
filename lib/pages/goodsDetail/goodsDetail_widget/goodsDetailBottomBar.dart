import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provide/provide.dart';
import 'package:wyyx_hc/provide/indexProvide.dart';

class GoodsDetailBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(750),
      color: Colors.white,
      height: ScreenUtil().setHeight(85),
      child: Row(
        children: <Widget>[
          InkWell(
            onTap: () async {
              Provide.value<IndexState>(context).changeIndex(0);
              Navigator.pop(context);
            },
            child: Container(
              width: ScreenUtil().setWidth(110),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.home,
                    size: 26,
                  ),
                  Text(
                    '首页',
                    style: TextStyle(fontSize: ScreenUtil().setSp(22)),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  border: Border(
                      right: BorderSide(width: 1, color: Colors.black12))),
            ),
          ),
          InkWell(
            onTap: () async {
              Provide.value<IndexState>(context).changeIndex(0);
              Navigator.pop(context);
            },
            child: Container(
              width: ScreenUtil().setWidth(110),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.headset_mic,
                    size: 26,
                  ),
                  Text(
                    '客服',
                    style: TextStyle(fontSize: ScreenUtil().setSp(22)),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  border: Border(
                      right: BorderSide(width: 1, color: Colors.black12))),
            ),
          ),
          InkWell(
            onTap: () async {
              Provide.value<IndexState>(context).changeIndex(0);
              Navigator.pop(context);
            },
            child: Container(
              width: ScreenUtil().setWidth(110),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.shopping_cart,
                    size: 26,
                  ),
                  Text(
                    '购物车',
                    style: TextStyle(fontSize: ScreenUtil().setSp(22)),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () async {
              //
            },
            child: Container(
              width: ScreenUtil().setWidth(210),
              alignment: Alignment.center,
              color: Colors.red[100],
              child: Text(
                '加入购物车',
                style: TextStyle(
                    color: Colors.red[900], fontSize: ScreenUtil().setSp(28)),
              ),
            ),
          ),
          InkWell(
            onTap: () async {
              //
            },
            child: Container(
              width: ScreenUtil().setWidth(210),
              alignment: Alignment.center,
              color: Colors.red[900],
              child: Text(
                '立即购买',
                style: TextStyle(
                    color: Colors.white, fontSize: ScreenUtil().setSp(28)),
              ),
            ),
          )
        ],
      ),
    );
  }
}

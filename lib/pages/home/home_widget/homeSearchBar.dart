import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provide/provide.dart';
import 'package:wyyx_hc/pages/home/model/homeModel.dart';
import '../../../provide/homeProvide.dart';
import '../../../provide/homeProvide.dart';

class HomeSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color backColor = Provide.value<HomeProvide>(context).searchBarBackColor;

    return Provide<HomeProvide>(
      builder: (context, child, val) {
        return AnimatedContainer(
          duration: Duration(milliseconds: 300),
          color: backColor,
          padding: EdgeInsets.fromLTRB(12, 12+ScreenUtil.statusBarHeight, 12, 8),
          child: Column(
            children: <Widget>[_title(), _searchBar(context)],
          ),
        );
      },
    );
  }

  Widget _title() {
    return Row(
      children: <Widget>[
        Text(
          '网易严选',
          style:
              TextStyle(color: Colors.white, fontSize: ScreenUtil().setSp(40)),
        ),
        Expanded(
            child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              _titleRightItem(
                  Icon(
                    Icons.border_clear,
                    color: Colors.white,
                  ),
                  '扫一扫'),
              _titleRightItem(
                  Icon(
                    Icons.notifications_none,
                    color: Colors.white,
                  ),
                  '消息'),
            ],
          ),
        ))
      ],
    );
  }

  Widget _titleRightItem(Icon icon, string) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: Column(
        children: <Widget>[
          icon,
          Text(
            string,
            style: TextStyle(
                color: Colors.white, fontSize: ScreenUtil().setSp(20)),
          )
        ],
      ),
    );
  }

  Widget _searchBar(context) {
    int count = Provide.value<HomeProvide>(context).searchCount;
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(Icons.search),
            Text(
              '搜索商品，共${count}款好物品',
              style: TextStyle(
                  color: Colors.black54, fontSize: ScreenUtil().setSp(28)),
            )
          ],
        ),
      ),
    );
  }
}

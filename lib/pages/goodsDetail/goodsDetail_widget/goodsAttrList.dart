import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import '../model/goodsDetailModel.dart';
import 'package:wyyx_hc/provide/goodsDetailProvide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GoodsDetailAttrlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GoodsDetailModel goodsDetailModel =
        Provide.value<GoodsDetailProvide>(context).goodsDetailModel;
    bool isExpandAttList =
        Provide.value<GoodsDetailProvide>(context).isExpandAttList;

    List<Widget> list = [
      Container(
        padding: EdgeInsets.only(bottom: 5),
        child: Text(
          '商品参数',
          style: TextStyle(
              fontSize: ScreenUtil().setSp(30), fontWeight: FontWeight.w600),
        ),
      )
    ];

    for (var i = 0; i < goodsDetailModel.attrList.length; i++) {
      AttrList attrList = goodsDetailModel.attrList[i];
      list.add(_cell(attrList.attrName, attrList.attrValue));
    }

    Widget widget;
    if (isExpandAttList) {
      widget = Column(
        children: list,
        crossAxisAlignment: CrossAxisAlignment.start,
      );
    } else {
      List tempList = list.sublist(0, 4)
        ..add(InkWell(
          onTap: () {
            Provide.value<GoodsDetailProvide>(context).changeAttExpand();
          },
          child: Container(
            alignment: Alignment.center,
            height: ScreenUtil().setHeight(90),
            child: Text(
              '点击查看更多',
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(25), color: Colors.black54),
            ),
          ),
        ));
      widget = Column(
        children: tempList,
        crossAxisAlignment: CrossAxisAlignment.start,
      );
    }

    return Container(
      color: Colors.grey[100],
      padding: EdgeInsets.symmetric(vertical: 12),
      child: widget = Container(
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
        child: widget,
      ),
    );
  }

  Widget _cell(title, content) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(width: 1, color: Colors.black12))),
      child: Row(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            width: ScreenUtil().setWidth(150),
            child: Text(title,
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(22), color: Colors.black38)),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(content,
                  style: TextStyle(fontSize: ScreenUtil().setSp(22))),
            ),
          ),
        ],
      ),
    );
  }
}

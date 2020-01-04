import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import '../model/goodsDetailModel.dart';
import 'package:wyyx_hc/provide/goodsDetailProvide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GoodsDetailInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GoodsDetailModel goodsDetailModel =
        Provide.value<GoodsDetailProvide>(context).goodsDetailModel;

    return Container(
      child: Column(
        children: <Widget>[
          _cell('已选择', ''),
          _cell('限制', goodsDetailModel.couponLimit),
          _promotion(context),
          _cell('配送', '请选择配送区域'),
          _cell('服务', goodsDetailModel.policyList.first.title),
        ],
      ),
    );
  }

  Widget _promotion(context) {
    GoodsDetailModel goodsDetailModel =
        Provide.value<GoodsDetailProvide>(context).goodsDetailModel;

    List<Widget> list = [];
    for (var i = 0;
        i < goodsDetailModel.promotionInfo.promotionList.length;
        i++) {
      PromotionList promotionList =
          goodsDetailModel.promotionInfo.promotionList[i];
      list.add(Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: ScreenUtil().setWidth(120),
            child: Text('${promotionList.tag}:',
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(26), color: Colors.red)),
          ),
          Expanded(
            child: Container(
              width: ScreenUtil().setWidth(100),
              child: Text(promotionList.name,
                  style: TextStyle(fontSize: ScreenUtil().setSp(26))),
            ),
          )
        ],
      ));
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(width: 1, color: Colors.black12))),
      child: Row(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            width: ScreenUtil().setWidth(100),
            child:
                Text('优惠', style: TextStyle(fontSize: ScreenUtil().setSp(26))),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: list,
              ),
            ),
          ),
          Icon(Icons.chevron_right)
        ],
      ),
    );
  }

  Widget _cell(title, content) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(width: 1, color: Colors.black12))),
      child: Row(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            width: ScreenUtil().setWidth(100),
            child:
                Text(title, style: TextStyle(fontSize: ScreenUtil().setSp(26))),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(content,
                  style: TextStyle(fontSize: ScreenUtil().setSp(26))),
            ),
          ),
          Icon(Icons.chevron_right)
        ],
      ),
    );
  }
}

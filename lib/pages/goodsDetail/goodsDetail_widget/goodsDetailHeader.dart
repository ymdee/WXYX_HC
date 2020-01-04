import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import '../model/goodsDetailModel.dart';
import 'package:wyyx_hc/provide/goodsDetailProvide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GoodsDetailHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(15, 20, 15, 15),
        child: Column(
          children: <Widget>[
            _price(context),
            _title(context),
            _recommend(context)
          ],
        ),
      ),
    );
  }

  Widget _price(context) {
    GoodsDetailModel goodsDetailModel =
        Provide.value<GoodsDetailProvide>(context).goodsDetailModel;

    return Row(
      children: <Widget>[
        RichText(
          text: TextSpan(
              text: '￥',
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(35), color: Colors.red[900]),
              children: [
                TextSpan(
                  text: goodsDetailModel.retailPrice,
                  style: TextStyle(
                      fontSize: ScreenUtil().setSp(40),
                      color: Colors.red[900],
                      fontWeight: FontWeight.w500),
                )
              ]),
        ),
        Container(
          color: Colors.red[200],
          padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
          margin: EdgeInsets.only(left: 15),
          child: Text(
            goodsDetailModel.rewardTag == null
                ? goodsDetailModel.pointsTip
                : goodsDetailModel.rewardTag,
            style: TextStyle(
                fontSize: ScreenUtil().setSp(20), color: Colors.white),
          ),
        )
      ],
    );
  }

  Widget _title(context) {
    GoodsDetailModel goodsDetailModel =
        Provide.value<GoodsDetailProvide>(context).goodsDetailModel;

    String goodsRate = goodsDetailModel.itemStar.goodCmtRate;
    String tempStr = goodsRate.substring(0, goodsRate.length - 3);

    return Container(
      height: ScreenUtil().setHeight(90),
      margin: EdgeInsets.only(top: 5),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    goodsDetailModel.name,
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(30),
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '推荐理由',
                    style: TextStyle(
                        color: Colors.black26,
                        fontSize: ScreenUtil().setSp(20),
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  tempStr,
                  style: TextStyle(
                      fontSize: ScreenUtil().setSp(26),
                      fontWeight: FontWeight.w500,
                      color: Colors.red[900]),
                ),
                Text(
                  '好评率>',
                  style: TextStyle(
                      color: Colors.black26,
                      fontSize: ScreenUtil().setSp(20),
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _recommend(context) {
    GoodsDetailModel goodsDetailModel =
        Provide.value<GoodsDetailProvide>(context).goodsDetailModel;

    List<Widget> list = [];
    for (var i = 0; i < goodsDetailModel.featureList.length; i++) {
      FeatureList val = goodsDetailModel.featureList[i];
      list.add(Row(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            width: ScreenUtil().setWidth(26),
            height: ScreenUtil().setWidth(26),
            child: Text(
              '${i + 1}',
              style: TextStyle(
                  color: Colors.red, fontSize: ScreenUtil().setSp(20)),
            ),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
                borderRadius: BorderRadius.circular(13)),
          ),
          SizedBox(width: 10),
          Text(
            val.text1,
            style: TextStyle(fontSize: ScreenUtil().setSp(22)),
          ),
          SizedBox(width: 10),
          Text(
            val.text2,
            style: TextStyle(fontSize: ScreenUtil().setSp(22)),
          ),
        ],
      ));
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(3),
      child: Container(
        color: Colors.grey[100],
        margin: EdgeInsets.only(top: 5),
        padding: EdgeInsets.all(10),
        child: Container(
          child: Column(
            children: list,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provide/provide.dart';
import '../model/mineFundModel.dart';
import '../../../provide/mineProvide.dart';

class MineMoney extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[_title(), _moneyRow(context)],
      ),
    );
  }

  Widget _title() {
    return  Container(
      alignment: Alignment.centerLeft,
      height: ScreenUtil().setHeight(100),
      margin: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(width: 1, color: Colors.grey)),
      ),
      child: Text(
        '我的资产',
        style: TextStyle(fontSize: ScreenUtil().setSp(28)),
      ),
    );
  }

  Widget _moneyRow(context) {
    MineFundModel mineFundModel =
        Provide.value<MineProvide>(context).mineFundModel;

    List<Widget> itemList = mineFundModel.fundList.map((FundList val) {
      return InkWell(
          onTap: () {},
          child: Container(
            width: ScreenUtil().setWidth(150),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  val.fundValue,
                  style: TextStyle(
                      fontSize: ScreenUtil().setSp(30),
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  val.fundName,
                  style: TextStyle(
                    fontSize: ScreenUtil().setSp(25),
                  ),
                )
              ],
            ),
          ));
    }).toList();

    return Container(
      height: ScreenUtil().setSp(160),
      child: Row(
        children: itemList,
      ),
    );
  }
}

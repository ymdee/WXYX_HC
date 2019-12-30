import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provide/provide.dart';
import '../model/categoryLeftListModel.dart';
import 'package:wyyx_hc/provide/categoryProvide.dart';

class CategotyLeftList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CategoryLeftListModel categoryLeftListModel =
        Provide.value<CategoryProvide>(context).categoryLeftListModel;

    return Container(
      width: ScreenUtil().setWidth(170),
      decoration: BoxDecoration(
          border: Border(right: BorderSide(width: 1, color: Colors.black12))),
      child: ListView.builder(
        itemCount: categoryLeftListModel.categoryList.length,
        itemBuilder: (context, index) {
          return _item(context, index);
        },
        itemExtent: ScreenUtil().setWidth(80),
      ),
    );
  }

  Widget _item(context, index) {
    int selectIndex = Provide.value<CategoryProvide>(context).selectBigIndex;
    CategoryLeftListModel categoryLeftListModel =
        Provide.value<CategoryProvide>(context).categoryLeftListModel;

    return InkWell(
      onTap: () {
        Provide.value<CategoryProvide>(context).changeBigIndex(index);
      },
      child: Container(
          child: Row(
        children: <Widget>[
          Container(
              height: ScreenUtil().setWidth(40),
              width: ScreenUtil().setWidth(3),
              color: selectIndex == index ? Colors.red[700] : Colors.white),
          Expanded(
            child: Center(
              child: Text(
                categoryLeftListModel.categoryList[index].name,
                style: TextStyle(
                    color:
                        selectIndex == index ? Colors.red[700] : Colors.black54,
                    fontSize: selectIndex == index
                        ? ScreenUtil().setSp(30)
                        : ScreenUtil().setSp(28)),
              ),
            ),
          )
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provide/provide.dart';
import 'package:wyyx_hc/pages/home/model/homeModel.dart';
import '../../../provide/homeProvide.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomeTimeBuy extends StatefulWidget {
  @override
  _HomeTimeBuyState createState() => _HomeTimeBuyState();
}

class _HomeTimeBuyState extends State<HomeTimeBuy> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      padding: EdgeInsets.fromLTRB(10, 2, 10, 10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _title(context),
            _timeBuyList(context),
          ],
        ),
      ),
    );
  }
}

Widget _title(context) {
  HomeModel homeModel = Provide.value<HomeProvide>(context).homeModel;

  return Container(
    padding: EdgeInsets.all(15),
    child: Row(
      children: <Widget>[
        Text(
          '限时抢购',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  '更多抢购>',
                  style: TextStyle(fontSize: ScreenUtil().setSp(26)),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Widget _timeBuyList(context) {
  HomeModel homeModel = Provide.value<HomeProvide>(context).homeModel;

  Widget _groupItem(ItemList item) {
    return InkWell(
      onTap: () {
        //点击商品
      },
      child: Container(
        padding: EdgeInsets.only(right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CachedNetworkImage(
                imageUrl: item.listPicUrl,
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
            Row(
              children: <Widget>[
                Text(
                  '￥${item.actualPrice}',
                  style: TextStyle(
                      color: Colors.red[800], fontSize: ScreenUtil().setSp(21)),
                ),
                Expanded(
                  child: Text(
                    '￥${item.retailPrice}',
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: ScreenUtil().setSp(21),
                      decoration: TextDecoration.lineThrough,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
            Text(
              '立减${item.differencePrice}',
              style: TextStyle(
                color: Colors.black38,
                fontSize: ScreenUtil().setSp(23),
              ),
            )
          ],
        ),
      ),
    );
  }

  return Container(
    height: ScreenUtil().setWidth(230),
    padding: EdgeInsets.only(left: 15, right: 15),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemExtent: ScreenUtil().setWidth(168),
      itemCount: homeModel.timePurchaseItems.itemList.length,
      itemBuilder: (BuildContext context, int index) {
        return _groupItem(homeModel.timePurchaseItems.itemList[index]);
      },
    ),
  );
}

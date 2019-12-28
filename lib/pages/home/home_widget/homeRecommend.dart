import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provide/provide.dart';
import 'package:wyyx_hc/pages/home/model/homeRecGoodsModel.dart';
import '../../../provide/homeProvide.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomeRecommend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Column(
        children: <Widget>[_title(), _recommendView(context)],
      ),
    );
  }

  Widget _title() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Text(
        '为你推荐',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget _recommendView(context) {
    HomeRecGoodsModel homeRecGoodsModel =
        Provide.value<HomeProvide>(context).recGoodsModel;
    return Container(
      padding: EdgeInsets.fromLTRB(12, 10, 10, 10),
      child: StaggeredGridView.countBuilder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 4,
        itemCount: homeRecGoodsModel.rcmdItemList.length,
        itemBuilder: (BuildContext context, int index) => new Container(
          color: Colors.white,
          child: _item(homeRecGoodsModel.rcmdItemList[index].categoryItem ??
              homeRecGoodsModel.rcmdItemList[index].pinItem),
        ),
        staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
    );
  }

  Widget _item(item) {
    List<Widget> widgetList = [];

    //图片
    if (item is CategoryItem) {
      widgetList.add(CachedNetworkImage(
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
          }));

      //Image.network(item.listPicUrl));
    } else {
      widgetList.add(CachedNetworkImage(
          imageUrl: item.picUrl,
          placeholder: (context, url) {
            return Image.asset(
              'images/default_goods.jpeg',
            );
          },
          errorWidget: (context, url, obj) {
            return Image.asset(
              'images/default_goods.jpeg',
            );
          }));
    }

    //描述
    String decs = '';
    if (item is CategoryItem) {
      decs = item.simpleDesc;
    } else {
      decs = item.description;
    }
    widgetList.add(
      Container(
        width: double.infinity,
        color: Colors.yellow[100],
        padding: EdgeInsets.all(5),
        child: Text(
          decs,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: TextStyle(color: Colors.orange[300]),
        ),
      ),
    );

    //商品名字
    String name = '';
    if (item is CategoryItem) {
      name = item.name;
    } else {
      name = item.title;
    }
    widgetList.add(
      Container(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Text(
          name,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
      ),
    );

    //价格
    String retailPrice = '';
    String activityPrice = '';
    if (item is CategoryItem) {
      retailPrice = '￥${item.retailPrice}';
      activityPrice = '￥${item.activityPrice}';
    } else {
      retailPrice = '￥${item.originPrice}';
      activityPrice = '￥${item.price}';
    }

    if ((item is CategoryItem && item.activityPrice == null) ||
        (item is PinItem && item.price == null)) {
      widgetList.add(Container(
        margin: EdgeInsets.only(left: 10),
        child: Row(
          children: <Widget>[
            Text(
              retailPrice,
              style: TextStyle(
                  color: Colors.red[800], fontSize: ScreenUtil().setSp(28)),
            ),
          ],
        ),
      ));
    } else {
      widgetList.add(Container(
        margin: EdgeInsets.only(left: 10),
        child: Row(
          children: <Widget>[
            Text(
              activityPrice,
              style: TextStyle(
                  color: Colors.red[800], fontSize: ScreenUtil().setSp(28)),
            ),
            Text(
              retailPrice,
              style: TextStyle(
                  color: Colors.black38,
                  fontSize: ScreenUtil().setSp(28),
                  decoration: TextDecoration.lineThrough),
            ),
          ],
        ),
      ));
    }

    //活动标签
    if (item is CategoryItem && item.itemTagList.length > 0) {
      List<Widget> tempList = [];
      for (ItemTagList item in item.itemTagList) {
        tempList.add(Container(
          margin: EdgeInsets.only(left: 5),
          padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
          decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(ScreenUtil().setWidth(16))),
          height: ScreenUtil().setWidth(32),
          child: Text(
            item.name,
            style: TextStyle(
                color: Colors.white, fontSize: ScreenUtil().setSp(18)),
          ),
        ));
      }
      widgetList.add(Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 5, top: 5),
        child: Row(
          children: tempList,
        ),
      ));
    }

    //分割线
    widgetList.add(Container(
        margin: EdgeInsets.only(top: 8),
        child: Divider(
          color: Colors.black12,
          height: 1,
          indent: 10,
          endIndent: 10,
        )));

    //头像+评论
    if (item.comments.length > 0) {
      widgetList.add(Container(
        padding: EdgeInsets.fromLTRB(10, 6, 6, 10),
        child: Row(
          children: <Widget>[
            ClipOval(
              child: Image.network(
                item.comments.first.picList != null
                    ? item.comments.first.picList.first
                    : '',
                width: ScreenUtil().setWidth(30),
                height: ScreenUtil().setWidth(30),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: ScreenUtil().setWidth(280),
              margin: EdgeInsets.only(left: 3),
              child: Text(
                item.comments.first.content,
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(20), color: Colors.black38),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ));
    }

    return Container(
      //alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: widgetList,
      ),
    );
  }
}

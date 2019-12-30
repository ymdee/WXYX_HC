import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provide/provide.dart';
import 'package:wyyx_hc/pages/home/model/homeModel.dart';
import '../../../provide/homeProvide.dart';
import '../../../base/baseProcessBar.dart';
import '../model/homeGroupModel.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomeGroup extends StatefulWidget {
  @override
  _HomeGroupState createState() => _HomeGroupState();
}

class _HomeGroupState extends State<HomeGroup> {
  ScrollController _scrollController = ScrollController();
  double _process = 0.0;

  @override
  void initState() {
    _scrollController.addListener(() {
      //监听滑动，传递滑动进度,刷新进度条
      setState(() {
        _process = _scrollController.position.pixels /
            _scrollController.position.maxScrollExtent;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _title(context),
            _groupList(context, _scrollController),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ProcessBar(_process, ScreenUtil().setWidth(150),
                  ScreenUtil().setWidth(30), 3),
            )
          ],
        ),
      ),
    );
  }
}

Widget _title(context) {
  HomeGroupModel groupModel = Provide.value<HomeProvide>(context).groupModel;

  double itemWidth = ScreenUtil().setWidth(34);
  double coverWidth = ScreenUtil().setWidth(10);
  double stackWidth = groupModel.avatars.length * itemWidth -
      (groupModel.avatars.length - 1) * coverWidth;

  List<Widget> imagesList = [];
  for (var i = 0; i < groupModel.avatars.length; i++) {
    imagesList.add(Positioned(
      top: 0,
      //bottom: 0,
      left: stackWidth - itemWidth * (i + 1) + coverWidth * i,
      width: itemWidth,
      height: itemWidth,
      child: ClipOval(
        child: CachedNetworkImage(
          width: itemWidth,
          imageUrl: groupModel.avatars[i] ?? '',
          errorWidget: (context, url, obj) {
            return Image.asset(
              'images/default_head.jpeg',
              width: itemWidth,
            );
          },
        ),
      ),
    ));
  }

  return Container(
    padding: EdgeInsets.all(15),
    child: Row(
      children: <Widget>[
        Text(
          '今日必拼',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 5),
                  width: stackWidth,
                  height: itemWidth,
                  child: Stack(children: imagesList),
                ),
                Text(
                  '好友正在拼>',
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

Widget _groupList(context, scrollController) {
  HomeGroupModel groupModel = Provide.value<HomeProvide>(context).groupModel;

  Widget _groupItem(PinList item) {
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
                }),
            Row(
              children: <Widget>[
                Text(
                  '￥${item.price}',
                  style: TextStyle(
                      color: Colors.red[800], fontSize: ScreenUtil().setSp(21)),
                ),
                Expanded(
                  child: Text(
                    '￥${item.originPrice}',
                    style: TextStyle(
                        color: Colors.black38,
                        fontSize: ScreenUtil().setSp(21),
                        decoration: TextDecoration.lineThrough),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
            Text(
              '已拼${item.joinUsers}件',
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
      controller: scrollController,
      itemExtent: ScreenUtil().setWidth(170),
      itemCount: groupModel.pinList.length,
      itemBuilder: (BuildContext context, int index) {
        return _groupItem(groupModel.pinList[index]);
      },
    ),
  );
}

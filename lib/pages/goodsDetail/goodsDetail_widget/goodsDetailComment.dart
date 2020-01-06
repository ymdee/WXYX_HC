import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provide/provide.dart';
import '../model/goodsDetailModel.dart';
import 'package:wyyx_hc/provide/goodsDetailProvide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GoodsDetailComment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GoodsDetailModel goodsDetailModel =
        Provide.value<GoodsDetailProvide>(context).goodsDetailModel;

    List comments = goodsDetailModel.comments;
    if (comments.length > 0) {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _header(context),
            _userInfo(context),
            _sepc(context),
            _content(context),
            _img(context)
          ],
        ),
      );
    } else {
      return SizedBox(
        height: 0,
      );
    }
  }

  Widget _header(context) {
    GoodsDetailModel goodsDetailModel =
        Provide.value<GoodsDetailProvide>(context).goodsDetailModel;

    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black12, width: 1))),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              child: RichText(
                text: TextSpan(
                    text: '用户评价 ',
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(30),
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                    children: [
                      TextSpan(
                          text: '(${goodsDetailModel.commentCount})',
                          style: TextStyle(
                              fontSize: ScreenUtil().setSp(25),
                              color: Colors.black38))
                    ]),
              ),
            ),
          ),
          Text(
            '${goodsDetailModel.itemStar.goodCmtRate} >',
            style: TextStyle(
                fontSize: ScreenUtil().setSp(25), color: Colors.black87),
          )
        ],
      ),
    );
  }

  Widget _userInfo(context) {
    GoodsDetailModel goodsDetailModel =
        Provide.value<GoodsDetailProvide>(context).goodsDetailModel;
    Comments comments = goodsDetailModel.comments.first;

    List<Widget> starWidget = [];
    for (var i = 0; i < comments.star; i++) {
      starWidget.add(Container(
        margin: EdgeInsets.only(left: 5),
        child: Icon(
          Icons.star,
          color: Colors.orange[300],
        ),
      ));
    }

    return Container(
      padding: EdgeInsets.fromLTRB(15, 15, 15, 10),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            child: CachedNetworkImage(
              imageUrl: (comments.frontUserAvatar==null?'':comments.frontUserAvatar),
              width: ScreenUtil().setWidth(50),
              height: ScreenUtil().setWidth(50),
            ),
          ),
          SizedBox(width: 15),
          Text(comments.frontUserName),
          Row(
            children: starWidget,
          )
        ],
      ),
    );
  }

  Widget _sepc(context) {
    GoodsDetailModel goodsDetailModel =
        Provide.value<GoodsDetailProvide>(context).goodsDetailModel;
    Comments comments = goodsDetailModel.comments.first;

    String spec = comments.skuInfo.first;
    for (var i = 1; i < goodsDetailModel.comments.length; i++) {
      spec += comments.skuInfo[i];
    }

    var date = DateTime.fromMillisecondsSinceEpoch(comments.createTime);

    return Container(
      padding: EdgeInsets.only(left: 20,right: 20),
      child: Text(
        '${date.toString() + '   ' + spec}',
        style:
            TextStyle(fontSize: ScreenUtil().setSp(24), color: Colors.black54),
      ),
    );
  }

  Widget _content(context) {
    GoodsDetailModel goodsDetailModel =
        Provide.value<GoodsDetailProvide>(context).goodsDetailModel;
    Comments comments = goodsDetailModel.comments.first;

    return Container(
      padding: EdgeInsets.only(left: 20, top: 12,right: 20),
      child: Text(
        '${comments.content}',
        style: TextStyle(fontSize: ScreenUtil().setSp(26)),
      ),
    );
  }

  Widget _img(context) {
    GoodsDetailModel goodsDetailModel =
        Provide.value<GoodsDetailProvide>(context).goodsDetailModel;
    Comments comments = goodsDetailModel.comments.first;

    return Container(
      height: ScreenUtil().setWidth(180+16+12),
      padding: EdgeInsets.only(top: 12, bottom: 16,right: 15),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: comments.picList.length,
        itemExtent: ScreenUtil().setWidth(185),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(left: 15),
            child: CachedNetworkImage(
              imageUrl: comments.picList[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}

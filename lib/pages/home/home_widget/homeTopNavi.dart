import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provide/provide.dart';
import 'package:wyyx_hc/pages/home/model/homeModel.dart';
import '../../../provide/homeProvide.dart';
import '../../../base/baseProcessBar.dart';

class HomeTopNavi extends StatefulWidget {
  @override
  _HomeTopNaviState createState() => _HomeTopNaviState();
}

class _HomeTopNaviState extends State<HomeTopNavi> {
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
        child: Column(children: <Widget>[
      _gridView(context),
      Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: ProcessBar(_process, 80, 40, 3))
    ]));
  }

  Widget _gridView(context) {
    HomeModel homeModel = Provide.value<HomeProvide>(context).homeModel;

    return Container(
      margin: EdgeInsets.only(top: 10),
      height: ScreenUtil().setHeight(270),
      child: GridView.builder(
        controller: _scrollController,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: homeModel.kingKongAreaV4.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          int tempIndex = index;
          int horItemCount = (homeModel.kingKongAreaV4.length / 2.0).ceil();
          if (index.isOdd) {
            tempIndex = (index ~/ 2.0) + horItemCount;
          } else {
            tempIndex = index ~/ 2;
          }
          return _item(homeModel.kingKongAreaV4[tempIndex]);
        },
      ),
    );
  }

  Widget _item(KingKongAreaV4 item) {
    return InkWell(
      onTap: () {
        //点击事件
      },
      child: Container(
        width: ScreenUtil().setWidth(140),
        margin: EdgeInsets.only(left: 20),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 6),
              child: Image.network(item.picUrls.first,
                  width: ScreenUtil().setWidth(90)),
            ),
            Text(
              item.title,
              style: TextStyle(
                  color: Colors.black87, fontSize: ScreenUtil().setSp(20)),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

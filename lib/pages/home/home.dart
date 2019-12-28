import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provide/provide.dart';
import 'package:wyyx_hc/pages/home/home_widget/homeTopNavi.dart';
import '../../provide/homeProvide.dart';
import 'model/homeModel.dart';
import 'home_widget/homeBanner.dart';
import 'home_widget/homeSearchBar.dart';
import 'home_widget/homeGroup.dart';
import 'home_widget/homeTimeBuy.dart';
import 'home_widget/homeRecommend.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  EasyRefreshController _controller;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    _controller = EasyRefreshController();
    super.initState();

    //   WidgetsBinding.instance.addPostFrameCallback((callback) {
    //     WidgetsBinding.instance.addPersistentFrameCallback((callback) {
    //       print("addPersistentFrameCallback be invoke");
    //       //触发一帧的绘制
    //       WidgetsBinding.instance.scheduleFrame();
    //     });
    //   });
  }

  @override
  Widget build(BuildContext context) {
    //宽高自适应初始化
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);

    return Scaffold(
        body: FutureBuilder(
      future: _getHomeData(context),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Provide<HomeProvide>(builder: (context, child, val) {
            return EasyRefresh(
              enableControlFinishLoad: true,
              controller: _controller,
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  HomeSearchBar(),
                  HomeBanner(),
                  HomeTopNavi(),
                  HomeGroup(),
                  HomeTimeBuy(),
                  HomeRecommend()
                ],
              ),
              onLoad: () async {
                HomeProvide homeProvide = Provide.value<HomeProvide>(context);
                await homeProvide.getRecommendGoods();
                _controller.finishLoad(
                    success: true, noMore: !homeProvide.recGoodsModel.hasMore);
              },
              footer: ClassicalFooter(
                bgColor: Colors.white,
                textColor: Colors.black,
                infoColor: Colors.black,
              ),
            );
          });
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    ));
  }

  _getHomeData(context) async {
    await Provide.value<HomeProvide>(context).getHomeData();
    return '完成';
  }
}

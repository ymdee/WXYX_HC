import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import 'package:wyyx_hc/provide/goodsDetailProvide.dart';
import 'goodsDetail_widget/goodsDetailBanner.dart';
import 'goodsDetail_widget/goodsDetailHeader.dart';
import 'goodsDetail_widget/goodsDetailInfo.dart';
import 'goodsDetail_widget/goodsAttrList.dart';
import 'goodsDetail_widget/goodsDetailAdBanner.dart';
import 'goodsDetail_widget/goodsDetailBottomBar.dart';
import 'package:flutter_html/flutter_html.dart';

class GoodsDetail extends StatefulWidget {
  int goodsId;

  GoodsDetail(this.goodsId);

  @override
  _GoodsDetailState createState() => _GoodsDetailState();
}

class _GoodsDetailState extends State<GoodsDetail> {
  ScrollController _scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品详情'),
      ),
      backgroundColor: Colors.white,
      body: FutureBuilder(
        future: _loadGoodsDetailData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Provide<GoodsDetailProvide>(
              builder: (context, child, val) {
                return Stack(
                  children: <Widget>[
                                    CustomScrollView(
                  controller: _scrollController,
                  slivers: <Widget>[
                    SliverToBoxAdapter(
                      child: GoodsDetailBanner(),
                    ),
                    SliverToBoxAdapter(
                      child: GoodsDetailHeader(),
                    ),
                    SliverToBoxAdapter(
                      child: GoodsDetailInfo(),
                    ),
                    SliverToBoxAdapter(
                      child: GoodsDetailAdBanner(),
                    ),
                    SliverToBoxAdapter(
                      child: GoodsDetailAttrlist(),
                    ),
                    SliverToBoxAdapter(
                      child: Html(
                        data: val.goodsDetailModel.itemDetail['detailHtml'],
                      ),
                    ),
                    // SliverList(
                    //   delegate:
                    //       SliverChildBuilderDelegate((BuildContext context, int index) {
                    //     //偶数加载标题栏，奇数加载GridView
                    //     if (index.isOdd) {
                    //       return _listCell(context, index ~/ 2);
                    //     } else {
                    //       final subCategoryList = categoryGroupList[index ~/ 2];

                    //       if (subCategoryList.name.length != 0) {
                    //         return _sectionHeader(subCategoryList);
                    //       } else {
                    //         return SizedBox(
                    //           height: 0,
                    //         );
                    //       }
                    //     }
                    //   }, childCount: itemCount),
                    // )
                  ],
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: GoodsDetailBottomBar(),
                )
                  ],
                );
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  _loadGoodsDetailData() async {
    await Provide.value<GoodsDetailProvide>(context).loadData(widget.goodsId);
    return '完成';
  }
}

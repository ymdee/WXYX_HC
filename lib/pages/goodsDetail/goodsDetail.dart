import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import 'package:wyyx_hc/provide/goodsDetailProvide.dart';

class GoodsDetail extends StatefulWidget {
  int goodsId; 

  GoodsDetail(this.goodsId);

  @override
  _GoodsDetailState createState() => _GoodsDetailState();
}

class _GoodsDetailState extends State<GoodsDetail> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _loadGoodsDetailData(),
      builder: (context,snapshot){
        if (snapshot.hasData) {
          return Provide<GoodsDetailProvide>(
            builder: (context,child,val){
              return Center(
                child: Text(val.goodsDetailModel.toJson().toString()),
              );
            },
          );
        }else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }


  _loadGoodsDetailData() async {
    await  Provide.value<GoodsDetailProvide>(context).loadData(widget.goodsId);
    return '完成';
  }
}
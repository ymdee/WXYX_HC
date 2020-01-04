import 'package:flutter/material.dart';
import 'package:wyyx_hc/network/api.dart';
import 'package:wyyx_hc/network/network_tool.dart';
import 'package:wyyx_hc/pages/goodsDetail/model/goodsDetailModel.dart';

class GoodsDetailProvide with ChangeNotifier{
  GoodsDetailModel goodsDetailModel;
  bool isExpandAttList = false;


  //请求商品详情数据
  Future loadData(goodsId) async{
    isExpandAttList = false;
    var paramas = {'itemId':goodsId};
    await networkGet(api_goods_detail,paramas: paramas).then((val){
      goodsDetailModel = GoodsDetailModel.fromJson(val);
      print(goodsDetailModel.id);
    });
  }

  //展开属性列表
  changeAttExpand(){
    isExpandAttList = true;
    notifyListeners();
  }
}
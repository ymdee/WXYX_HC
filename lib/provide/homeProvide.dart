import 'package:flutter/material.dart';
import '../pages/home/model/homeModel.dart';
import '../pages/home/model/homeGroupModel.dart';
import '../pages/home/model/homeRecGoodsModel.dart';
import '../network/api.dart';
import '../network/network_tool.dart';

class HomeProvide with ChangeNotifier {
  int searchCount;//搜索框数量
  HomeModel homeModel;//首页主要model
  HomeGroupModel groupModel;//拼团model
  HomeRecGoodsModel recGoodsModel;//推荐商品model
  Color searchBarBackColor = Color(0xFFAA3A1A);//搜索条默认背景色
  int lastItemId = 0; //推荐最后一个商品id，分页需要

//获取首页数据
  Future getHomeData() async {
    lastItemId = 0;
    searchCount = 0;

    try {
      await Future.wait([
        //类别，banner，限时购买
        networkGet(api_home).then((val) {
          homeModel = HomeModel.fromJson(val);
        }),
        //搜索框数量
        networkGet(api_search_count).then((val) {
          searchCount = val['count'];
        }),
        //团购商品
        networkGetHostChange(api_group, paramas: {'orderType': 2, 'size': 16})
            .then((val) {
          groupModel = HomeGroupModel.fromJson(val);
        }),
        //推荐商品
        networkGet(api_rec, paramas: {'lastItemId': lastItemId, 'size': 20})
            .then((val) {
          recGoodsModel = HomeRecGoodsModel.fromJson(val);
          lastItemId = recGoodsModel.rcmdItemList.last.id;
        })
      ]).then((val) {
        notifyListeners();
      });
    } catch (e) {
      print(e);
    }
  }

  //改变搜索栏背景色
  changeSearchBarBackColor(color) {
    searchBarBackColor = color;
    notifyListeners();
  }

  //上拉加载商品推荐
  Future getRecommendGoods() async {
    var paramas = {'lastItemId': lastItemId, 'size': 20};
    try {
      await networkGet(api_rec, paramas: paramas).then((val) {
        recGoodsModel.rcmdItemList.addAll(HomeRecGoodsModel.fromJson(val).rcmdItemList);
        recGoodsModel.hasMore = HomeRecGoodsModel.fromJson(val).hasMore;
        lastItemId = recGoodsModel.rcmdItemList.last.id;
        notifyListeners();
      });
    } catch (e) {
      print(e);
    }
  }
}

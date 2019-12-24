import 'package:flutter/material.dart';
import '../network/network_tool.dart';
import '../network/api.dart';
import '../pages/mine/model/mineDetailModel.dart';
import '../pages/mine/model/mineFundModel.dart';
import '../pages/mine/model/mineGridModel.dart';

class MineProvide with ChangeNotifier {
  MineDetailModel mineDetailModel;
  MineFundModel mineFundModel;
  MineGridModel mineGridModel;

  loadData() async {
    await Future.wait([
      networkGet(api_mine).then((val){
        mineDetailModel = MineDetailModel.fromJson(val);
      }),
      networkGet(api_mine_grid).then((val){
        mineGridModel = MineGridModel.fromJson(val);
      }),
      networkGet(api_mine_money).then((val){
        mineFundModel = MineFundModel.fromJson(val);
      }),
    ]).then((vals) {
      notifyListeners();
    }).catchError((e) {
      print(e);
    });
  }
}

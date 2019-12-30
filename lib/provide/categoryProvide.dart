import 'package:flutter/material.dart';
import 'package:wyyx_hc/pages/category/category_widget/categoryLeftList.dart';
import '../pages/category/model/categoryItemListModel.dart';
import '../pages/category/model/categoryLeftListModel.dart';
import '../network/api.dart';
import '../network/network_tool.dart';

class CategoryProvide with ChangeNotifier {
  CategoryLeftListModel categoryLeftListModel; //左大类导航model
  CategoryItemListModel categoryItemListModel; //右边子类导航model
  bool isloading = false;//是否正在请求子类数据
  int selectBigIndex = 0; //当前选中大类index

  changeBigIndex(int selectIndex) {
    selectBigIndex = selectIndex;
    int id = categoryLeftListModel.categoryList[selectBigIndex].id;
    isloading = true;
    notifyListeners();
    
    loadSubCategory(id);
  }

  loadBigCategory() async {
    await networkGet(api_bigCategory).then((val) async {
      categoryLeftListModel = CategoryLeftListModel.fromJson(val);

      await loadSubCategory(categoryLeftListModel.categoryList.first.id);
    });

  }

  loadSubCategory(id) async {
    var params = {
      'categoryId': categoryLeftListModel.categoryList[selectBigIndex].id
    };
    await networkGet(api_subCategory, paramas: params).then((val) {
      categoryItemListModel = CategoryItemListModel.fromJson(val);
      isloading = false;
      notifyListeners();
    });
  }
}

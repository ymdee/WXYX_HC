import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import 'package:wyyx_hc/provide/categoryProvide.dart';
import 'category_widget/categoryLeftList.dart';
import 'category_widget/categoryBanner.dart';
import 'category_widget/categoryItemlist.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('分类'),
        ),
        body: FutureBuilder(
          future: _loadData(context),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Provide<CategoryProvide>(builder: (context, child, val) {
                return Row(
                  children: <Widget>[
                    CategotyLeftList(),
                    CategoryItemList()
                  ],
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

  _loadData(context) async {
    await Provide.value<CategoryProvide>(context).loadBigCategory();
    return '完成';
  }
}

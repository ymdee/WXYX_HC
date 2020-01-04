import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import 'package:wyyx_hc/provide/categoryProvide.dart';
import 'category_widget/categoryLeftList.dart';
import 'category_widget/categoryBanner.dart';
import 'category_widget/categoryItemlist.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  Future _loadData;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((callback) {
      _loadData = _loadCategoryData(context);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('分类'),
        ),
        body: FutureBuilder(
          future: _loadData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Provide<CategoryProvide>(builder: (context, child, val) {
                return Row(
                  children: <Widget>[CategotyLeftList(), CategoryItemList()],
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

  _loadCategoryData(context) async {
    await Provide.value<CategoryProvide>(context).loadBigCategory();
    setState(() {});
    return '完成';
  }
}

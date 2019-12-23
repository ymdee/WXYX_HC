import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import '../provide/indexState.dart';
import 'home/home.dart';
import 'category/category.dart';
import 'cart/cart.dart';
import 'mine/mine.dart';

class IndexPage extends StatelessWidget {
  
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), title: Text('首页')),
    BottomNavigationBarItem(icon: Icon(Icons.border_horizontal), title: Text('分类')),
    BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart), title: Text('购物车')),
    BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('个人')),
  ];

  final List<Widget> bodies = [
    HomePage(),
    CategoryPage(),
    CartPage(),
    MinePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Provide<IndexState>(builder: (context, child, val) {
      int currentIndex = Provide.value<IndexState>(context).currentIndex;

      return Scaffold(
        backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),//app背景色
        bottomNavigationBar: CupertinoTabBar(
          iconSize: 25,
          activeColor: Colors.red[900],
          onTap: (index) {
            Provide.value<IndexState>(context).changeIndex(index);
          },
          currentIndex: currentIndex,
          items: bottomTabs,
        ),
        body: IndexedStack(
          index: currentIndex,
          children: bodies,
        ),
      );
    });
  }
}

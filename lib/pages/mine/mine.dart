import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provide/provide.dart';
import 'mine_widget/mine_header.dart';
import '../../provide/mineProvide.dart';
import 'mine_widget/mine_money.dart';
import 'mine_widget/mine_items.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  Future _loadData;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((callback) {
      _loadData = _loadMineData(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('个人中心'),
        ),
        body: FutureBuilder(
            future: _loadData,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Provide<MineProvide>(builder: (context, child, val) {
                  return ListView(
                    children: <Widget>[
                      MineHeader(),
                      MineMoney(),
                      MineItems(),
                    ],
                  );
                });
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }));
  }

  Future _loadMineData(BuildContext context) async {
    await Provide.value<MineProvide>(context).loadData();
    setState(() {});
    return '成功';
  }
}

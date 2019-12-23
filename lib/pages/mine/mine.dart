import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../network/network_tool.dart';
import '../../network/api.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  Future _loadDataFuture;

  @override
  void initState() {
    _loadDataFuture = _loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('个人中心'),
      ),
      body: FutureBuilder(
        future: _loadDataFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(child: Text(snapshot.data));
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Future _loadData() async {
    await Future.wait([
      networkGet(api_mine),
      networkGet(api_mine_grid),
      networkGet(api_mine_money)
    ]).then((vals) {
      
    }).catchError((e) {
      print(e);
    });
    return '成功';
  }
}

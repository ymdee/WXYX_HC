import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provide/provide.dart';
import 'mine_widget/mine_header.dart';
import '../../provide/mineProvide.dart';
import 'mine_widget/mine_money.dart';
import 'mine_widget/mine_items.dart';

class MinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('个人中心'),
        ),
        body: FutureBuilder(
            future: _loadData(context),
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

  Future _loadData(BuildContext context) async {
    await Provide.value<MineProvide>(context).loadData();
    return '成功';
  }
}

// class MinePage extends StatefulWidget {
//   @override
//   _MinePageState createState() => _MinePageState();
// }

// class _MinePageState extends State<MinePage> {
//   Future _loadDataFuture;

//   @override
//   void initState() {
//     super.initState();
//         _loadDataFuture = _loadData();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('个人中心'),
//         ),
//         body: FutureBuilder(
//             future: _loadDataFuture,
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 return Provide<MineProvide>(builder: (context, child, val) {
//                   return ListView(
//                     children: <Widget>[
//                       MineHeader(),
//                     ],
//                   );
//                 });
//               } else {
//                 return Center(
//                   child: CircularProgressIndicator(),
//                 );
//               }
//             }));
//   }

//   Future _loadData() async {
//     await Provide.value<MineProvide>(context).loadData();
//     return '成功';
//   }
// }

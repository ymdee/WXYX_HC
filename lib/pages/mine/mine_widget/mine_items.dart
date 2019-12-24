import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provide/provide.dart';
import '../model/mineGridModel.dart';
import '../../../provide/mineProvide.dart';

class MineItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MineGridModel mineGridModel =
        Provide.value<MineProvide>(context).mineGridModel;

    return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: GridView.builder(
          itemCount: mineGridModel.gridList.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.3
          ),
          itemBuilder: (context, index) {
            String imageUrl = mineGridModel.gridList[index].icon;
            String finalImageUrl = imageUrl.contains('https:')?imageUrl:('https:'+imageUrl);

            return Container(
              alignment: Alignment.center,
              height: ScreenUtil().setHeight(50),
              decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: Colors.black12)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.network(finalImageUrl,width: ScreenUtil().setWidth(55)),
                  Text(mineGridModel.gridList[index].text,
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(25),
                        color: Colors.black87
                      ))
                ],
              ),
            );
          },
        ));
  }
}

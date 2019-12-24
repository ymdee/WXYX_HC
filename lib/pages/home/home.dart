import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    //宽高自适应初始化
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Container(
        
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

  class ProcessBar extends StatefulWidget {
   double height;
   double outWidth;
   double inWidth;
   double process;

   ProcessBar(this.process,this.outWidth,this.inWidth,this.height);

    @override
    _ProcessBarState createState() => _ProcessBarState();
  }
  
  class _ProcessBarState extends State<ProcessBar> {
    @override
    Widget build(BuildContext context) {
      return Container(
        width: ScreenUtil().setWidth(widget.outWidth),
        height: widget.height,
        decoration: BoxDecoration(
            color: Colors.black12, borderRadius: BorderRadius.circular(widget.height/2)),
        child: Stack(
          children: <Widget>[
            Positioned(
              left: widget.process * ScreenUtil().setWidth(widget.outWidth-widget.inWidth),
              child: Container(
                width: ScreenUtil().setWidth(widget.inWidth),
                height: widget.height,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(widget.height/2)),
              ),
            )
          ],
        ));
    }
  }
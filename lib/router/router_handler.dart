import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:wyyx_hc/pages/goodsDetail/goodsDetail.dart';

Handler detailsHandler = Handler(
  handlerFunc: (BuildContext context,Map<String,List<String>>params){
    int goodsId = int.parse(params['id'].first);
    return GoodsDetail(goodsId);
  }
);

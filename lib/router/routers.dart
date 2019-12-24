import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import './router_handler.dart';

class Routes {
  static String root = '/';
  static String detailsPage = '/detail';
  static String cartPage = '/cart';

  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print('ERROR===>ROUTE WAS NOT FONUND!!!!');
    });

    //router.define(detailsPage, handler: detailsHandler);
  }
}

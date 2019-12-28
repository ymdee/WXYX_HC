import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:wyyx_hc/router/application.dart';
import 'package:wyyx_hc/router/routers.dart';
import 'package:fluro/fluro.dart';
import 'pages/index.dart';
//provide
import 'package:provide/provide.dart';
import 'provide/indexProvide.dart';
import 'provide/mineProvide.dart';
import 'provide/homeProvide.dart';

void main() {
  //注册provider
  final providers = Providers()
    ..provide(Provider.function((context) => IndexState()))
    ..provide(Provider.function((context) => MineProvide()))
    ..provide(Provider.function((context) => HomeProvide()));

  runApp(ProviderNode(
    child: MyApp(),
    providers: providers,
  ));

  if (Platform.isAndroid) {
    // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //配置全局路由
    final Router router = Router();
    Routes.configureRoutes(router);
    Application.router = router;

    return MaterialApp(
      //本地化
      localizationsDelegates: [
        GlobalEasyRefreshLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: [
        Locale('en', ''),
        Locale('zh', 'CN'),
      ],
      title: '网易严选(仿)',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.white,
          focusColor: Colors.white,
          highlightColor: Colors.white,
          hoverColor: Colors.white,
          splashColor: Colors.white,
          accentColor: Colors.red),

      home: IndexPage(),
    );
  }
}

import 'package:flutter/material.dart';
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

void main() {
  //注册provider
  final providers = Providers()
    ..provide(Provider.function((context) => IndexState()))
    ..provide(Provider.function((context) => MineProvide()));

  runApp(ProviderNode(
    child: MyApp(),
    providers: providers,
  ));
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
          splashColor: Colors.white),
      home: IndexPage(),
    );
  }
}

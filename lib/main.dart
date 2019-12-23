import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'pages/index.dart';
//provide
import 'package:provide/provide.dart';
import 'provide/indexState.dart';

void main() {
  //注册provider
  final providers = Providers()
  ..provide(Provider.function((context) => IndexState()));

  runApp(ProviderNode(
    child: MyApp(),
    providers: providers,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
      theme: ThemeData(primaryColor: Colors.white),
      home: IndexPage(),
    );
  }
}

import 'package:dio/dio.dart';
import 'dart:async';
import 'api.dart';

class DioShareInstance {
  final Dio dio = new Dio();

  //static const httpHeader = {};
  static DioShareInstance _instance;

//单例
  static DioShareInstance shareInstance() {
    if (_instance == null) {
      _instance = new DioShareInstance();
      _instance.dio.options.headers.addAll({'X-WX-3RD-Session':'f677e22095e77473de9fe97658e46415'});
      //抓包配置
      // (_instance.dio.httpClientAdapter as DefaultHttpClientAdapter)
      //     .onHttpClientCreate = (client) {
      //   // config the http client
      //   client.findProxy = (uri) {
      //     //proxy all request to localhost:8888
      //     return "PROXY 192.168.1.102:8888";
      //   };
      //   // you can also create a HttpClient to dio
      //   // return HttpClient();
      // };
    }
    return _instance;
  }
}

Future networkPost(String url,{paramas}) async {
  try {
    print('开始获取url: ${serviceUrl+url} 数据\n');
    if (paramas != null) {
      print('参数：==================>$paramas\n');
    }
    Response response;
    Dio dio = DioShareInstance.shareInstance().dio;
    if (paramas == null) {
      response = await dio.post(serviceUrl+url);
    } else {
      response = await dio.post(serviceUrl+url,data: paramas);
    }

    if (response.statusCode == 200) {
      if (response.data['code'] == '200') {
        print('请求成功:=================>${response.data['data']}\n');
        return response.data['data'];
      } else {
        print('msg:=================>${response.data['msg']}\n');
      }
      return response.data;
    } else {
      throw Exception('接口异常');
    }
  } catch (e) {
    return print('ERROR:=================>$e\n');
  }
}

Future networkGet(String url,{paramas}) async {
  try {
    print('开始获取 ${serviceUrl+url}} 数据');
    if (paramas != null) {
      print('参数：==================>$paramas');
    }
    Response response;
    Dio dio = DioShareInstance.shareInstance().dio;
    if (paramas == null) {
      response = await dio.get(serviceUrl+url);
    } else {
      response = await dio.get(serviceUrl+url,queryParameters: paramas);
    }

    if (response.statusCode == 200) {
      if (response.data['code'] == '200') {
        print('请求成功:=================>\n${response.data['data']}');
        return response.data['data'];
      } else {
        print('msg:=================>\n${response.data['msg']}');
      }
      return response.data;
    } else {
      throw Exception('接口异常');
    }
  } catch (e) {
    return print('ERROR:=================>$e');
  }
}
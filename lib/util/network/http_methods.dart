import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class HttpReq {

  static Future<http.Response?> postApi({
    required String apiUrl,
    var body ,
    var headers}) async {
    try {
      var jsonBody = jsonEncode(body);
      var header = <String, String>{
        "Content-Type": "application/json; charset=UTF-8",
      };

      print("AppUrl-> $apiUrl , Body-> $jsonBody , Headers-> $header");
      print(body.runtimeType);

      http.Response response = await http.post(Uri.parse(apiUrl) , headers: header, body: jsonBody).timeout(
          const Duration(seconds: 15));
      print("Response($apiUrl)${response.statusCode} ,body-> ${response.body}");
      return response;
    }
    catch(e) {
      Fluttertoast.showToast(msg: "$e");
      // ***APP_LOG***
      // myBotToast(text: e.toString());
      // AppLog.basicLog(pageName: "http_req", methodName: "postApi" , msg: e.toString());
    }
    return null;
  }


  static Future<http.Response?> getApi({
    required String apiUrl,
    var headers}) async {
    try {
      http.Response response = await http.get(Uri.parse(apiUrl) , headers: headers);
      print("Response code ($apiUrl) ${response.statusCode}");
      return response;
    }
    catch(e) {
      // ***APP_LOG***
      // AppLog.basicLog(pageName: "http_req", methodName: "getApi" , msg: e.toString());
    }
    return null;
  }

  static Future<http.Response?> patchAPi({
    required String apiUrl,
    var body ,
    var headers}) async {
    try {
      var jsonBody = jsonEncode(body);
      var header = <String, String>{
        "Content-Type": "application/json; charset=UTF-8",
      };

      print("AppUrl-> $apiUrl , Body-> $jsonBody , Headers-> $header");
      print(body.runtimeType);

      http.Response response = await http.patch(Uri.parse(apiUrl) , headers: header, body: jsonBody).timeout(
          const Duration(seconds: 15));
      print("Response($apiUrl)${response.statusCode} ,body-> ${response.body}");
      return response;
    }
    catch(e) {
      Fluttertoast.showToast(msg: "$e");
      // ***APP_LOG***
      // myBotToast(text: e.toString());
      // AppLog.basicLog(pageName: "http_req", methodName: "postApi" , msg: e.toString());
    }
    return null;
  }

  static Future<http.Response?> putApi({
    required String apiUrl,
    var body ,
    var headers}) async {
    try {
      var jsonBody = jsonEncode(body);
      var header = <String, String>{
        "Content-Type": "application/json; charset=UTF-8",
      };

      print("AppUrl-> $apiUrl , Body-> $jsonBody , Headers-> $header");
      print(body.runtimeType);

      http.Response response = await http.put(Uri.parse(apiUrl) , headers: header, body: jsonBody).timeout(
          const Duration(seconds: 15));
      print("Response($apiUrl)${response.statusCode} ,body-> ${response.body}");
      return response;
    }
    catch(e) {
      Fluttertoast.showToast(msg: "$e");
      // ***APP_LOG***
      // myBotToast(text: e.toString());
      // AppLog.basicLog(pageName: "http_req", methodName: "postApi" , msg: e.toString());
    }
    return null;
  }

}
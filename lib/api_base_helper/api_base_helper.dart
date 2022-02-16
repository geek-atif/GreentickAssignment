import 'dart:io';
import 'package:greentick/utiles/constant.dart';
import '../api_base_helper/app_exceptions.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class ApiBaseHelper {
  final String _baseUrl = Constant.baseUrl;
  Future<dynamic> getGoogle(String url) async {
    var responseJson;
    try {
      var urlURi = Uri.parse(url);
      final response = await http.get(urlURi, headers: {
        // 'Content-Type': 'application/json',
        //'Accept': 'application/json',
        //'Authorization': 'Bearer $token',
      });
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> get(String url) async {
    var responseJson;
    try {
      var urlURi = Uri.parse(_baseUrl + url);
      final response = await http.get(urlURi, headers: {
        //'Content-Type': 'application/json',
        //'Accept': 'application/json',
        //'Authorization': 'Bearer $token',
      });
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('Please check your Internet Connection');
    }
    return responseJson;
  }

  Future<dynamic> post(String url, dynamic body) async {
    var responseJson;
    try {
      var urlURi = Uri.parse(_baseUrl + url);
      final response = await http.post(urlURi, body: body, headers: {
        //'Content-Type': 'application/json',
        //'Accept': 'application/json',
        //'Authorization': 'Bearer $token',
      });
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('Please check your Internet Connection');
    }
    return responseJson;
  }

  Future<dynamic> put(String url, dynamic body) async {
    var responseJson;
    try {
      var urlURi = Uri.parse(_baseUrl + url);
      final response = await http.put(urlURi, body: body, headers: {
        //'Content-Type': 'application/json',
        //'Accept': 'application/json',
        //'Authorization': 'Bearer $token',
      });
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('Please check your Internet Connection');
    }
    return responseJson;
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        return responseJson;
      case 201:
        var responseJson = json.decode(response.body.toString());
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}

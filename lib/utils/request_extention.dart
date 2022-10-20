import 'dart:async';
import 'dart:convert';
import 'dart:html';
/* import 'package:get_it/get_it.dart'; */
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:raterprog/models/user_models.dart';
import 'package:raterprog/views/login.dart';

class RequestExtension<T> {
  static const String _urlEndpoint = 'http://15.188.11.154:3000/';
  static const String _urlEndpointSimple = 'http://15.188.11.154:3000/';

  Future<dynamic> login(String url, dynamic data) async {
    print(url);
    print(
        "**************************************************************************************");
    print(_urlEndpoint + url);

    final response = await http.post(Uri.parse(_urlEndpoint + url),
        headers: {
          "Content-Type": "application/json; charset=utf-8",
        },
        body: data);
    if (response.statusCode == 200 || response.statusCode == 201) {
      print(
          "£££££££££££££££££££££££££££££££££££££££££££££££££££££££££££££££££££££££££££££££££££");
      debugPrint(response.body.toString());
      switch (T) {
        case User:
          print(jsonDecode(response.body));
          return User.fromJson(json.decode(response.body)) as T;
        default:
          User.fromJson(jsonDecode(response.body)) as T;
        //MedicalRecordsModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);    Country
      }
      /*GetIt.I<Appservices>()
          .setPlayerId(jsonDecode(response.body)[data]['id'].toString());
      GetIt.I<Appservices>()
          .setPlayerName(jsonDecode(response.body)[data]['prenom'].toString());*/
    } else {
      String message = "";
      if (jsonDecode(response.body) != null) {
        message = jsonDecode(response.body);
      } else {
        message = response.reasonPhrase!;
      }
      throw Exception(message);
    }
  }
}

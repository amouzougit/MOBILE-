import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:hustler/env/env.dart';

class ApiSecurityService{
  final String url_base_security = URL_BASE + "/api/auth";


  Future<String> register(String username, String email, String password) async {
    final response = await http
        .post(Uri.parse(url_base_security + '/signup'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
          'username': username,
          'email': email,
          'password': password
      }),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body)["message"];
    }  else if(response.statusCode == 400) {
      try {
        return jsonDecode(response.body)["message"];
      } catch (e) {
        return "Le service ne repond pas. Veuillez réessayer!!!";
      }
      
    }else {
      return "Le service ne repond pas. Veuillez réessayer plus tard";
    }
  }

  Future<dynamic> login(String username,String password) async {
    final response = await http
        .post(Uri.parse(url_base_security + '/signin'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
          'username': username,
          'password': password
      }),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }  else if(response.statusCode == 400) {
      return "Le nom d'utilisateur ou le mot de passe incorrect";
    }else {
      return "Le service ne repond pas";
    }
  }


}
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:hustler/env/env.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiSecurityService {
  final String url_base_security = URL_BASE + "/api/auth";
  final String url_base = URL_BASE + "/api";

  Future<String> register(
      String username, String email, String password) async {
    final response = await http.post(
      Uri.parse(url_base_security + '/signup'),
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
    } else if (response.statusCode == 400) {
      try {
        return jsonDecode(response.body)["message"];
      } catch (e) {
        return "Le service ne repond pas. Veuillez réessayer!!!";
      }
    } else {
      return "Le service ne repond pas. Veuillez réessayer plus tard";
    }
  }

  Future<String> postuler(
      String offreId, String description, String telephone) async {
    final prefs = await SharedPreferences.getInstance();
    Object? accessToken = prefs.get('accessToken');
    final response = await http.post(
      Uri.parse(url_base + '/service/demande/create'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer ' + accessToken.toString(),
      },
      body: jsonEncode(<String, String>{
        'description': description,
        'telephone': telephone,
        'idPost': offreId
      }),
    );

    if (response.statusCode == 200) {
      return "POSTULER";
    } else if (response.statusCode == 400) {
      try {
        //  return jsonDecode(response.body);
        if (response.body == "vous avez deja postuler a cette offre") {
          return "DEJA_POSTULER";
        }
        return "ERREUR";
      } catch (e) {
        return "Le service ne repond pas. Veuillez réessayer!!!";
      }
    } else {
      return "Le service ne repond pas. Veuillez réessayer plus tard";
    }
  }

  Future<String> creerOffre(String titre, String description) async {
    final prefs = await SharedPreferences.getInstance();
    Object? accessToken = prefs.get('accessToken');
    final response = await http.post(
      Uri.parse(url_base + '/post/create'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer ' + accessToken.toString(),
      },
      body: jsonEncode(
          <String, String>{'description': description, 'titre': titre}),
    );

    if (response.statusCode == 200) {
      return "CREER";
    } else if (response.statusCode == 400) {
      try {
        //  return jsonDecode(response.body);
        if (response.body == "vous avez deja postuler a cette offre") {
          return "ECHOUER";
        }
        return "ERREUR";
      } catch (e) {
        return "Le service ne repond pas. Veuillez réessayer!!!";
      }
    } else {
      return "Le service ne repond pas. Veuillez réessayer plus tard";
    }
  }

  Future<dynamic> login(String username, String password) async {
    final response = await http.post(
      Uri.parse(url_base_security + '/signin'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
          <String, String>{'username': username, 'password': password}),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else if (response.statusCode == 400) {
      return "Le nom d'utilisateur ou le mot de passe incorrect";
    } else {
      return "Le service ne repond pas";
    }
  }

  Future<dynamic> getPosts() async {
    final prefs = await SharedPreferences.getInstance();
    Object? accessToken = prefs.get('accessToken');
    final response = await http
        .get(Uri.parse(url_base + '/post/getAll'), headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer ' + accessToken.toString(),
    });

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else if (response.statusCode == 400) {
      return "Error";
    } else {
      return "Le service ne repond pas";
    }
  }
}

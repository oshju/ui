import 'dart:convert';
import 'package:http/http.dart';

import 'package:flutter/material.dart';


class oauth2{
  late final Client _client;
  final client_id = 'c3e4c9c0-9c9b-4b9c-8b1a-8c1b1b1b1b1b';
  final client_secret = 'c3e4c9c0-9c9b-4b9c-8b1a-8c1b1b1b1b1b';

  get secret => null;
  /// Returns a token for an anonymous user.
  Future<String> getDefaultToken() async {
    final url = Uri(
      scheme: 'https',
      host: 'id.twitch.tv',
      path: '/oauth2/token',
      queryParameters: {
        'client_id': client_id,
        'client_secret': client_secret,
        'grant_type': 'client_credentials',
      },
    );

    final response = await _client.post(url);
    if (response.statusCode == 200) {
      return jsonDecode(response.body)['access_token'];
    } else {
      print(jsonDecode(response.body));
      return Future.error('Failed to get default token');
    }
  }

  /// Returns a bool indicating the validity of the given token.
  Future<bool> validateToken({required String token}) async {
    final url = Uri.parse('https://id.twitch.tv/oauth2/validate');

    final response = await _client.get(url, headers: {'Authorization': 'Bearer $token'});
    if (response.statusCode == 200) {
      return true;
    } else {
      print(jsonDecode(response.body));
      return false;
    }
  }
}
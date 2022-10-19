import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:oauth2_client/oauth2_client.dart';
import 'package:oauth2_client/oauth2_helper.dart';

import 'package:oauth2_client/spotify_oauth2_client.dart';



class lodeodos extends StatelessWidget{

  Future<void> fetchFiles() async {
    var client = SpotifyOAuth2Client(
        redirectUri: 'app://blackhole/auth ',
        customUriScheme: 'app://blackhole/auth ');

    var tknResp = await client.getTokenWithAuthCodeFlow(
        clientId: '9a5ca2dbd3d84250aacbde63de954f16',
        scopes: [
          'user-read-email',
        ]);
    //var json=jsonDecode(tknResp.body);

    print(tknResp.httpStatusCode);
    print(tknResp.error);
    print(tknResp.expirationDate);
    print(tknResp.scope);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
            children: <Widget>[
              boton(),
              boton1()
            ],
          )
      ),
    );
  }
}

Widget boton(){
  return RaisedButton(
    child: Text('Login'),
    onPressed: () {
      fetchFiles();
    },
  );
}

Widget boton1(){
  return RaisedButton(
    child: Text('Login'),
    onPressed: () {
      getAccessToken();
    },
  );
}

Future<void> fetchFiles() async {
  var client = SpotifyOAuth2Client(
      redirectUri: 'com.example.ui://callback',
      customUriScheme: 'com.example.ui');

  var tknResp = await client.getTokenWithAuthCodeFlow(
      clientId: '9a5ca2dbd3d84250aacbde63de954f16',
      scopes: [
        'user-read-email','user-read-private',
      ]);
  //var json=await jsonDecode(tknResp.toString());
  //print(json);

  print(tknResp.httpStatusCode);
  print(tknResp.error);
  print(tknResp.expirationDate);
  print(tknResp.scope.toString());
  print(tknResp.accessToken);
}

class MyOAuth2Client extends OAuth2Client {
  MyOAuth2Client({required String redirectUri, required String customUriScheme})
      : super(
      authorizeUrl: 'https://www.bungie.net/en/oauth/authorize',
      //Your service's authorization url
      tokenUrl: 'https://www.bungie.net/platform/app/oauth/token',
      //Your service access token url
      redirectUri: 'com.example.ui://callback',
      customUriScheme: 'com.example.ui',

  );
}

Future<void> getAccessToken() async {
  var client = OAuth2Client(
      authorizeUrl: 'https://www.bungie.net/en/oauth/authorize',
      tokenUrl: 'https://www.bungie.net/platform/app/oauth/token',
      redirectUri: 'com.example.ui://callback',
      customUriScheme: 'com.example.ui');

  var tknResp = await client.getTokenWithAuthCodeFlow(
      clientId: '37130',
      scopes: [
        "channel:moderate",
        "chat:edit",
        "chat:read"
      ]);

  print(tknResp.httpStatusCode);
  print(tknResp.error);
  print(tknResp.expirationDate);
  print(tknResp.scope);
}
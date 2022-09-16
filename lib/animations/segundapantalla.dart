import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:oauth2_client/oauth2_client.dart';
import 'package:oauth2_client/oauth2_helper.dart';
import 'package:oauth2_client/google_oauth2_client.dart';
import 'package:oauth2_client/spotify_oauth2_client.dart';




class lodeo extends StatelessWidget{

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
              boton()
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


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:oauth2_client/authorization_response.dart';
import 'package:oauth2_client/oauth2_client.dart';
import 'package:oauth2_client/oauth2_helper.dart';
import 'package:oauth2_client/google_oauth2_client.dart';
import 'package:oauth2_client/spotify_oauth2_client.dart';
import 'package:ui/Models/calltoapi.dart';
import 'package:ui/animations/oauth.dart';
import 'package:http/http.dart' as http;

import 'newapi.dart';
import 'newmodel.dart';

class lodeo extends StatefulWidget {
  @override
  State<lodeo> createState() => _WeatherPageState();
}
class _WeatherPageState extends State<lodeo> {
  Future getData() async {
    return await callttoappi().getatatodapi();
  }


  Future<dynamic>? _myData;

  @override
  void initState() {
    setState(() {
      _myData = getData();
    });

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
        builder: (ctx, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        // If error occured
        if (snapshot.hasError) {
          return Center(
            child: Text(
              '${snapshot.error.toString()} occurred',
              style: TextStyle(fontSize: 18),
            ),
          );

          // if data has no errors
        } else if (snapshot.hasData) {
          // Extracting data from snapshot object
          final data = snapshot.data as Item;
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.8, 1),
                colors: <Color>[
                  Color.fromARGB(255, 65, 89, 224),
                  Color.fromARGB(255, 83, 92, 215),
                  Color.fromARGB(255, 86, 88, 177),
                  Color(0xfff39060),
                  Color(0xffffb56b),
                ],
                tileMode: TileMode.mirror,
              ),
            ),
            width: double.infinity,
            height: double.infinity,
            child: SafeArea(
              child: Column(
                children: [




                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          data.albumType.toString(),
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),

                        Text(
                          data.id.toString(),
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),

                        Text(
                          data.name.toString(),
                          style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      } else if (snapshot.connectionState == ConnectionState.waiting) {
        return Center(
          child: CircularProgressIndicator(),
        );
      } else {
        return Center(
          child: Text("${snapshot.connectionState} occured"),
        );
      }
      return Center(
        child: Text("Server timed out!"),
      );
    },
    future: _myData!,
    ),
    );

  }

  Widget boton() {
    return RaisedButton(
      child: Text('Login'),
      onPressed: () {
        fetchFiles1();
      },
    );
  }

  Widget contendio() {
    var tknresp;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [


        Text(
          'hola',
          style: TextStyle(),
        ),
        ButtonBar(
          children: [
            RaisedButton(
                child: Text('post'),
                onPressed: () {
                  Future<void> fetchFiles1() async {
                    String url = 'https://api.spotify.com/v1/playlists/37i9dQZF1DXcBWIGoYBM5M/tracks';
                    var client = SpotifyOAuth2Client(
                        redirectUri: 'com.example.ui://callback',
                        customUriScheme: 'com.example.ui');

                    var tknResp = await client.getTokenWithAuthCodeFlow(
                        clientId: '9a5ca2dbd3d84250aacbde63de954f16',
                        scopes: [
                          'user-read-email',
                          'user-read-private',
                        ]);

                    if (tknResp != null) {
                      var headers = {
                        'Authorization': 'Bearer ${tknResp.accessToken}',
                      };
                      var request = http.Request('GET', Uri.parse(
                          'https://api.spotify.com/v1/browse/new-releases'));

                      request.headers.addAll(headers);

                      http.StreamedResponse response = await request.send();

                      if (response.statusCode == 200) {
                        print(await response.stream.bytesToString());
                      }
                      else {
                        print(response.reasonPhrase);
                      }
                    }
                  }
                  fetchFiles1();
                }),

          ],
        ),
      ],
    );
  }


  Future fetchFiles1() async {
    String url = 'https://api.spotify.com/v1/playlists/37i9dQZF1DXcBWIGoYBM5M/tracks';
    var client = SpotifyOAuth2Client(
        redirectUri: 'com.example.ui://callback',
        customUriScheme: 'com.example.ui');

    var tknResp = await client.getTokenWithAuthCodeFlow(
        clientId: '9a5ca2dbd3d84250aacbde63de954f16',
        scopes: [
          'user-read-email',
          'user-read-private',
        ]);

    if (tknResp != null) {
      var headers = {
        'Authorization': 'Bearer ${tknResp.accessToken}',
      };
      var request = await http.Request('GET', Uri.parse(
          'https://api.spotify.com/v1/browse/new-releases'));

      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send().timeout(
          const Duration(seconds: 20));

      if (response.statusCode == 200) {
        print(await response.stream.bytesToString());
      }
      else {
        print(response.reasonPhrase);
      }
    }
  }
}

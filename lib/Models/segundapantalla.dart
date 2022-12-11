import 'dart:convert';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:oauth2_client/authorization_response.dart';
import 'package:oauth2_client/oauth2_client.dart';
import 'package:oauth2_client/oauth2_helper.dart';
import 'package:oauth2_client/google_oauth2_client.dart';
import 'package:oauth2_client/spotify_oauth2_client.dart';
import 'package:ui/Models/calltoapi.dart';
import 'package:ui/Models/playlistmodel.dart';
import 'package:ui/Models/playlistmodel.dart';
import 'package:ui/animations/cofee.dart';
import 'package:ui/animations/oauth.dart';
import 'package:http/http.dart' as http;

import '../animations/sabado.dart';
import 'newapi.dart';
import 'newmodel.dart';

class lodeo extends StatelessWidget {
  Track1? track1;
  List<Track1>? lista;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Flex(
            mainAxisSize: MainAxisSize.min,
            direction: Axis.vertical,
            children: [
              Expanded(
                child: FutureBuilder(
                  future: getData(),
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
                        List<dynamic> data = snapshot.data as List<dynamic>;
                        return Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
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
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  '${data[7]['track']['name'][14]}',
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  //obtain the data from the api
                                  //f,
                                  '${data[7]['track']['album']['name']}',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Welcome ${data[0]['picture']}',
                                  style: TextStyle(
                                      fontSize: 50,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                IconButton(
                                    onPressed: () async {
                                      final player = AudioPlayer();
                                      //String url=  player.setSourceUrl('${data[7]['track']['album']['preview_url']}')as String;
                                      await player.play(DeviceFileSource(
                                          '${data[1]['track']['album']['preview_url']}'));
                                    },
                                    icon: Icon(Icons.arrow_forward_ios)),
                                SingleChildScrollView(
                                  child: Expanded(
                                    flex: 1,
                                    child: Container(
                                      height: 1000,
                                      child: Expanded(
                                      child:Column(
                                        children: [
                                          Text(
                                            '${data[7]['track']['album']['name']}',
                                            style: TextStyle(
                                                fontSize: 40,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),

                                          //lista de canciones en fuente blanco
                                            ClipRRect(
                                                child: Text(
                                              '${data[3]['track']['name']}',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                          Text(
                                            'Welcome ${data[3]['track']['album']['name']}',
                                            style: TextStyle(
                                                fontSize: 30,
                                                color: Colors.black38,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'Welcome ${data[3]['track']['album']['name']}',
                                            style: TextStyle(
                                                fontSize: 30,
                                                color: Colors.black38,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'Welcome ${data[3]['track']['album']['name']}',
                                            style: TextStyle(
                                                fontSize: 30,
                                                color: Colors.black38,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'Welcome ${data[3]['track']['album']['name']}',
                                            style: TextStyle(
                                                fontSize: 30,
                                                color: Colors.black38,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Row(children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(18.0),
                                              child: IconButton(
                                                  onPressed: () async {
                                                    final player =
                                                        AudioPlayer();
                                                    //String url=  player.setSourceUrl('${data[7]['track']['album']['preview_url']}')as String;
                                                    await player.play(
                                                        DeviceFileSource(
                                                            '${data[7]['track']['preview_url']}'));
                                                  },
                                                  icon: Icon(
                                                      Icons.arrow_forward_ios)),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(18.0),
                                              child: IconButton(
                                                  onPressed: () async {
                                                    final player =
                                                        AudioPlayer();
                                                    //String url=  player.setSourceUrl('${data[7]['track']['album']['preview_url']}')as String;
                                                    await player.play(
                                                        DeviceFileSource(
                                                            '${data[7]['track']['preview_url']}'));
                                                  },
                                                  icon: Icon(
                                                      Icons.palette_outlined)),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(18.0),
                                              child: IconButton(
                                                  onPressed: () async {
                                                    final player =
                                                        AudioPlayer();
                                                    //String url=  player.setSourceUrl('${data[7]['track']['album']['preview_url']}')as String;
                                                    await player.play(
                                                        DeviceFileSource(
                                                            '${data[7]['track']['preview_url']}'));
                                                  },
                                                  icon: const Icon(
                                                      Icons.play_circle)),
                                            )
                                          ]),
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              child: ListView.builder(
                                                shrinkWrap: true,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount: data.length,
                                                itemBuilder: (context, index) {
                                                  return ClipRRect(
                                                    child: Card(
                                                      child: Image.network(
                                                        '${data[index]['track']['album']['images'][0]['url']}',
                                                      ),
                                                      //String url=  player.setSourceUrl('${data[7]['track']['album']['
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                              child: Container(
                                                child: ListView.builder(
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                  Axis.horizontal,
                                                  itemCount: data.length,
                                                  itemBuilder: (context, index) {
                                                    return ClipRRect(
                                                      child: Card(
                                                        child: Image.network(
                                                          '${data[index]['track']['album']['images'][0]['url']}',
                                                        ),
                                                        //String url=  player.setSourceUrl('${data[7]['track']['album']['
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),

                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                            ),
                          ]),
                        ),
                        );
                      }
                    } else if (snapshot.connectionState ==
                        ConnectionState.waiting) {
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
                ),
              ),
            ],
          ),
        ),
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
                    String url =
                        'https://api.spotify.com/v1/playlists/37i9dQZF1DXcBWIGoYBM5M/tracks';
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
                      var request = http.Request(
                          'GET',
                          Uri.parse(
                              'https://api.spotify.com/v1/browse/new-releases'));

                      request.headers.addAll(headers);

                      http.StreamedResponse response = await request.send();

                      if (response.statusCode == 200) {
                        print(await response.stream.bytesToString());
                      } else {
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
    String url =
        'https://api.spotify.com/v1/playlists/37i9dQZF1DXcBWIGoYBM5M/tracks';
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
      var request = await http.Request(
          'GET', Uri.parse('https://api.spotify.com/v1/browse/new-releases'));

      request.headers.addAll(headers);

      http.StreamedResponse response =
          await request.send().timeout(const Duration(seconds: 20));

      if (response.statusCode == 200) {
        print(await response.stream.bytesToString());
      } else {
        print(response.reasonPhrase);
      }
    }
  }

  Widget _buildList() {
    return Flexible(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: lista.toString().length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('$lista[index].name'),
              subtitle: Text('$lista[index].name'),
              trailing: Text('$lista[index].name'),
            );
          }),
    );
  }

  Future<List<dynamic>> getData() async {
    return await callttoappi().getatatodapi();
  }
}

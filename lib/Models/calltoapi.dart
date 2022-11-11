import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:oauth2_client/spotify_oauth2_client.dart';
import 'package:ui/Models/segundapantalla.dart';

import 'newmodel.dart';

class callttoappi {
  //late callttoappi call;
  Future<List<Item>> getatatodapi() async {
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

    /**
  var instance = new callttoappi();
  Future get instaced=>instance.getatatodapi();
  instanced() {
    instance.getatatodapi();
  }




  Future<List<Item>?> hola(tknResp) async {
**/

    var headers = {
      'Authorization': 'Bearer ${tknResp.accessToken}',
      'Content-Type': 'application/json',
      'Charset': 'utf-8'
    };

    Map<String, String> headers1 = {
      'Authorization': 'Bearer ${tknResp.accessToken}',
      'Content-Type': 'application/json;charset=UTF-8',
      'Charset': 'utf-8'
    };

    var request = await http.Request(
        'GET', Uri.parse('https://api.spotify.com/v1/browse/new-releases'));

    request.headers.addAll(headers1);

    http.StreamedResponse response =
        await request.send().timeout(const Duration(seconds: 20));
    Map<String,dynamic> userMap = jsonDecode(await response.stream.bytesToString());
    List<dynamic> userMap1 = userMap['albums']['items'];
    return userMap1.map((e) => Item.fromJson(e)).toList();
    if (response.statusCode == 200) {
      List<Item> userMap = jsonDecode(await response.stream.bytesToString());
      //Item user = Item.fromJson(userMap);
      print(userMap);
      //Map<String,dynamic> json = jsonDecode(await response.stream.bytesToString());
      //print(json);
      //return Item.fromJson(userMap);

    } else {
      print(response.reasonPhrase);
    }
  }
}

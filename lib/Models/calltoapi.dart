
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:oauth2_client/spotify_oauth2_client.dart';
import 'package:ui/Models/segundapantalla.dart';

import 'newmodel.dart';

class callttoappi {



  Future getatatodapi() async {
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
        final reponsedata = await response.stream.bytesToString();
        print(await response.stream.bytesToString());
        var json = jsonDecode(await response.stream.bytesToString());

      }
      else {
        print(response.reasonPhrase);
      }
      return Item.fromJson(jsonDecode(reponsedata));
    }
  }


}
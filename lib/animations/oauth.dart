import 'package:flutter/material.dart';
import 'package:oauth2_client/github_oauth2_client.dart';
import 'package:oauth2_client/access_token_response.dart';
import 'package:oauth2_client/oauth2_client.dart';
import 'package:http/http.dart' as http;

class oauth extends StatelessWidget {
  var accessToken;

  final uri = Uri.parse('https://api.github.com/user/repos');
  OAuth2Client client = GitHubOAuth2Client(
      //Corresponds to the android:scheme attribute
      customUriScheme: 'my.app',
      //The scheme must match the customUriScheme parameter!
      redirectUri: 'my.app://oauth2redirect');

//Require an Access Token with the Authorization Code grant
  Future<AccessTokenResponse> getAccessToken() async {
    AccessTokenResponse tknResp = await client.getTokenWithAuthCodeFlow(
        clientId: 'aa1679bcf9aa628835c2',
        clientSecret: '458109f4c276028475c40e09aa4d5755b258fe53',
        scopes: ['repo']);

    return tknResp;
  }

//From now on you can perform authenticated HTTP requests
  Future<OAuth2Client> getUserInfo() async {
    var httpClient = http.Client();
    http.Response resp =
        await httpClient.get(uri, headers: {'Authorization': 'Bearer '});
    print(resp.body);
    AccessTokenResponse tknResp = await getAccessToken();
    OAuth2Client client = GitHubOAuth2Client(
        customUriScheme: 'my.app', redirectUri: 'my.app://oauth2redirect');
    return await client;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(children: <Widget>[
          appbar(context),
          letris(),
          letter(context),
          body(context)
        ])));
  }
}

Widget appbar(BuildContext context) {
  return AppBar(
    title: Text('Protocolo de Autenticación'),
    centerTitle: true,
    backgroundColor: Colors.blueAccent,
  );
}

Widget letter(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(18.0),
    child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/letter.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Image.network(
          'https://th.bing.com/th/id/OIP.KL-mHpPmOHbAUm2x_sEwpAHaHa?pid=ImgDet&rs=1',
          width: 230.0,
          height: 180.0,
        )),
  );
}

Widget letris() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.arrow_downward),
        ),
        Text(
          'Aasgard',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Icon(Icons.arrow_downward),
        ),
        Text(
          'Domingo',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}

Widget fondocolor() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/fondo.png'),
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}

Widget body(BuildContext context) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Login',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Usuario',
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Contraseña',
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                child: Text('Ingresar'),
                color: Colors.blueAccent,
                textColor: Colors.white,
                elevation: 7.0,
                onPressed: () {
                  //TODO: Implementar LOS METODOS DE AUTENTICACION
                  //oauth.getAccessToken();
                  //oauth.getUserInfo();
                  //client.getUserInfo();
                },
              ),
              Text(
                'crea una cuenta',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

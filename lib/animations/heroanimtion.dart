import 'package:flutter/material.dart';
import 'package:oauth2/oauth2.dart' as oauth2;

class githubauthenticator{
  final CredentialStorage =_credentialStorage;
  githubauthenticator(this._credentialStorage);


  static const clientid='';
  static const secretid='';
  static const scopes=['read-user','user:email'];
  static final authorizationendpoint=Uri.parse('https://github.com/login/oauth/authorize');
  static final tokenendpoint=Uri.parse('https://github.com/login/oauth/authorize');
  static final redirecturi=Uri.parse('localhost:8080/callback');


  Future<Credentials?>getsigneCredential()async{
    try{
      final credentials= await _credentialsStorage.read();
    }
  }





}

class oauth(){

}
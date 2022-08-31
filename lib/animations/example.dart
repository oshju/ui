// Copyright (c) 2017, 2020 rinukkusu, hayribakici. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:io';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/spotify.dart';

import 'listtile.dart';
import 'oauth.dart';

void main() async {
  //var keyJson = await File('assets/Documents/apikeys.txt').readAsString();
  //var keyMap = json.decode(keyJson);
  var keyMap = {
    "clientId": "9a5ca2dbd3d84250aacbde63de954f16",
    "Secret": "10c173438bcf47fdb7a870417fc33dc6"
  };

  var credentials = SpotifyApiCredentials(keyMap['id'], keyMap['secret']);
  var spotify = SpotifyApi(credentials);

  print('\nPodcast:');
  await spotify.shows
      .get('4rOoJ6Egrf8K2IrywzwOMk')
      .then((podcast) => print(podcast.name))
      .onError(
          (error, stackTrace) => print((error as SpotifyException).message));

  print('\nPodcast episode:');
  var episodes = spotify.shows.episodes('4AlxqGkkrqe0mfIx3Mi7Xt');
  await episodes.first().then((first) => print(first.items!.first)).onError(
      (error, stackTrace) => print((error as SpotifyException).message));

  print('\nArtists:');
  var artists = await spotify.artists.list(['0OdUWJ0sBjDrqHygGUXeCF']);
  artists.forEach((x) => print(x.name));

  print('\nAlbum:');
  var album = await spotify.albums.get('2Hog1V8mdTWKhCYqI5paph');
  print(album.name);

  print('\nAlbum Tracks:');
  var tracks = await spotify.albums.getTracks(album.id!).all();
  tracks.forEach((track) {
    print(track.name);
  });

  print('\nFeatured Playlist:');
  var featuredPlaylists = await spotify.playlists.featured.all();
  featuredPlaylists.forEach((playlist) {
    print(playlist.name);
  });

  print('\nUser\'s playlists:');
  var usersPlaylists =
      await spotify.playlists.getUsersPlaylists('superinteressante').all();
  usersPlaylists.forEach((playlist) {
    print(playlist.name);
  });

  print("\nSearching for \'Metallica\':");
  var search = await spotify.search
      .get('metallica')
      .first(2)
      .catchError((err) => print((err as SpotifyException).message));
  if (search == null) {
    return;
  }
  search.forEach((pages) {
    pages.items!.forEach((item) {
      if (item is PlaylistSimple) {
        print('Playlist: \n'
            'id: ${item.id}\n'
            'name: ${item.name}:\n'
            'collaborative: ${item.collaborative}\n'
            'href: ${item.href}\n'
            'trackslink: ${item.tracksLink!.href}\n'
            'owner: ${item.owner}\n'
            'public: ${item.owner}\n'
            'snapshotId: ${item.snapshotId}\n'
            'type: ${item.type}\n'
            'uri: ${item.uri}\n'
            'images: ${item.images!.length}\n'
            '-------------------------------');
      }
      if (item is Artist) {
        print('Artist: \n'
            'id: ${item.id}\n'
            'name: ${item.name}\n'
            'href: ${item.href}\n'
            'type: ${item.type}\n'
            'uri: ${item.uri}\n'
            '-------------------------------');
      }
      if (item is TrackSimple) {
        print('Track:\n'
            'id: ${item.id}\n'
            'name: ${item.name}\n'
            'href: ${item.href}\n'
            'type: ${item.type}\n'
            'uri: ${item.uri}\n'
            'isPlayable: ${item.isPlayable}\n'
            'artists: ${item.artists!.length}\n'
            'availableMarkets: ${item.availableMarkets!.length}\n'
            'discNumber: ${item.discNumber}\n'
            'trackNumber: ${item.trackNumber}\n'
            'explicit: ${item.explicit}\n'
            '-------------------------------');
      }
      if (item is AlbumSimple) {
        print('Album:\n'
            'id: ${item.id}\n'
            'name: ${item.name}\n'
            'href: ${item.href}\n'
            'type: ${item.type}\n'
            'uri: ${item.uri}\n'
            'albumType: ${item.albumType}\n'
            'artists: ${item.artists!.length}\n'
            'availableMarkets: ${item.availableMarkets!.length}\n'
            'images: ${item.images!.length}\n'
            'releaseDate: ${item.releaseDate}\n'
            'releaseDatePrecision: ${item.releaseDatePrecision}\n'
            '-------------------------------');
      }
    });
  });

  var relatedArtists =
      await spotify.artists.relatedArtists('0OdUWJ0sBjDrqHygGUXeCF');
  print('\nRelated Artists: ${relatedArtists.length}');

  credentials = await spotify.getCredentials();
  print('\nCredentials:');
  print('Client Id: ${credentials.clientId}');
  print('Access Token: ${credentials.accessToken}');
  print('Credentials Expired: ${credentials.isExpired}');
}

class spotify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[_appbar(context), foto(context), iconos()],
        ),
      ),
    );
  }
}
//hola

Widget _appbar(context) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
            iconSize: 40.0,
            icon: SvgPicture.asset('assets/icons/search.svg'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => listile(context)));
            }),
        IconButton(
            iconSize: 40.0,
            icon: SvgPicture.asset('assets/icons/search.svg'),
            onPressed: () {
              main();
            }),
        IconButton(
            iconSize: 40.0,
            icon: SvgPicture.asset('assets/icons/search.svg'),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => oauth()));
            }),
      ],
    ),
  );
}

Widget foto(context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height / 2,
    child: Padding(
      padding: const EdgeInsets.only(bottom: 38.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: NetworkImage(
                'https://th.bing.com/th/id/R.f1210d1733a1f4cae73be6c5a1580f1e?rik=ntrniArnGl5leQ&pid=ImgRaw&r=0'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.only(
              //topLeft: Radius.circular(40.0),
              //topRight: Radius.circular(40.0),
              ),
        ),
      ),
    ),
  );
}

Widget iconos() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
            iconSize: 40.0,
            icon: SvgPicture.asset('assets/icons/search.svg'),
            onPressed: () {}),
        Text("Zinedine Zidane", style: TextStyle(fontSize: 20.0)),
        IconButton(
            iconSize: 40.0,
            icon: Icon(Icons.favorite_border),
            onPressed: () {
              main();
            }),
      ],
    ),
  );
}

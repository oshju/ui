class Newmodel {
  Newmodel({
    required this.albums,
  });

  final Albums? albums;

  factory Newmodel.fromJson(Map<String, dynamic> json){
    return Newmodel(
      albums: json["albums"] == null ? null : Albums.fromJson(json["albums"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "albums": albums?.toJson(),
  };

  @override
  String toString(){
    return '$albums';
  }
}

class Albums {
  Albums({
    required this.href,
    required this.items,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
  });

  final String? href;
  final List<Item> items;
  final int? limit;
  final String? next;
  final int? offset;
  final dynamic previous;
  final int? total;

  factory Albums.fromJson(Map<String, dynamic> json){
    return Albums(
      href: json["href"],
      items: json["items"] == null ? [] : List<Item>.from(json["items"]!.map((x) => Item.fromJson(x))),
      limit: json["limit"],
      next: json["next"],
      offset: json["offset"],
      previous: json["previous"],
      total: json["total"],
    );
  }

  Map<String, dynamic> toJson() => {
    "href": href,
    "items": List<Item>.from(items.map((x) => x?.toJson())),
    "limit": limit,
    "next": next,
    "offset": offset,
    "previous": previous,
    "total": total,
  };

  @override
  String toString(){
    return '$href, $items, $limit, $next, $offset, $previous, $total';
  }
}

class Item {
  Item({
    required this.albumType,
    required this.artists,
    required this.availableMarkets,
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.images,
    required this.name,
    required this.releaseDate,
    required this.releaseDatePrecision,
    required this.totalTracks,
    required this.type,
    required this.uri,
  });

  final String? albumType;
  final List<Artist> artists;
  final List<String> availableMarkets;
  final ExternalUrls? externalUrls;
  final String? href;
  final String? id;
  final List<Image> images;
  final String? name;
  final DateTime? releaseDate;
  final String? releaseDatePrecision;
  final int? totalTracks;
  final String? type;
  final String? uri;

  factory Item.fromJson(Map<String, dynamic> json){
    return Item(
      albumType: json["album_type"],
      artists: json["artists"] == null ? [] : List<Artist>.from(json["artists"]!.map((x) => Artist.fromJson(x))),
      availableMarkets: json["available_markets"] == null ? [] : List<String>.from(json["available_markets"]!.map((x) => x)),
      externalUrls: json["external_urls"] == null ? null : ExternalUrls.fromJson(json["external_urls"]),
      href: json["href"],
      id: json["id"],
      images: json["images"] == null ? [] : List<Image>.from(json["images"]!.map((x) => Image.fromJson(x))),
      name: json["name"],
      releaseDate: json["release_date"] == null ? null : DateTime.parse(json["release_date"]),
      releaseDatePrecision: json["release_date_precision"],
      totalTracks: json["total_tracks"],
      type: json["type"],
      uri: json["uri"],
    );
  }

  Map<String, dynamic> toJson() => {
    "album_type": albumType,
    "artists": List<Artist>.from(artists.map((x) => x?.toJson())),
    "available_markets": List<String>.from(availableMarkets.map((x) => x)),
    "external_urls": externalUrls?.toJson(),
    "href": href,
    "id": id,
    "images": List<Image>.from(images.map((x) => x?.toJson())),
    "name": name,
    //"release_date": "${releaseDate.year.toString().padLeft(4'0')}-${releaseDate.month.toString().padLeft(2'0')}-${releaseDate.day.toString().padLeft(2'0')}",
    "release_date_precision": releaseDatePrecision,
    "total_tracks": totalTracks,
    "type": type,
    "uri": uri,
  };

  @override
  String toString(){
    return '$albumType, $artists, $availableMarkets, $externalUrls, $href, $id, $images, $name, $releaseDate, $releaseDatePrecision, $totalTracks, $type, $uri';
  }
}

class Artist {
  Artist({
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.name,
    required this.type,
    required this.uri,
  });

  final ExternalUrls? externalUrls;
  final String? href;
  final String? id;
  final String? name;
  final String? type;
  final String? uri;

  factory Artist.fromJson(Map<String, dynamic> json){
    return Artist(
      externalUrls: json["external_urls"] == null ? null : ExternalUrls.fromJson(json["external_urls"]),
      href: json["href"],
      id: json["id"],
      name: json["name"],
      type: json["type"],
      uri: json["uri"],
    );
  }

  Map<String, dynamic> toJson() => {
    "external_urls": externalUrls?.toJson(),
    "href": href,
    "id": id,
    "name": name,
    "type": type,
    "uri": uri,
  };

  @override
  String toString(){
    return '$externalUrls, $href, $id, $name, $type, $uri';
  }
}

class ExternalUrls {
  ExternalUrls({
    required this.spotify,
  });

  final String? spotify;

  factory ExternalUrls.fromJson(Map<String, dynamic> json){
    return ExternalUrls(
      spotify: json["spotify"],
    );
  }

  Map<String, dynamic> toJson() => {
    "spotify": spotify,
  };

  @override
  String toString(){
    return '$spotify';
  }
}

class Image {
  Image({
    required this.height,
    required this.url,
    required this.width,
  });

  final int? height;
  final String? url;
  final int? width;

  factory Image.fromJson(Map<String, dynamic> json){
    return Image(
      height: json["height"],
      url: json["url"],
      width: json["width"],
    );
  }

  Map<String, dynamic> toJson() => {
    "height": height,
    "url": url,
    "width": width,
  };

  @override
  String toString(){
    return '$height, $url, $width';
  }
}

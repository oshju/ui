class Example {
  bool? collaborative;
  String? description;
  ExternalUrls? externalUrls;
  Followers? followers;
  String? href;
  String? id;
  List<Images>? images;
  String? name;
  Owner? owner;
  dynamic primaryColor;
  bool? public;
  String? snapshotId;
  Tracks1? tracks;
  String? type;
  String? uri;

  Example({this.collaborative, this.description, this.externalUrls, this.followers, this.href, this.id, this.images, this.name, this.owner, this.primaryColor, this.public, this.snapshotId, this.tracks, this.type, this.uri});

  Example.fromJson(Map<String, dynamic> json) {
    collaborative = json["collaborative"];
    description = json["description"];
    externalUrls = json["external_urls"] == null ? null : ExternalUrls.fromJson(json["external_urls"]);
    followers = json["followers"] == null ? null : Followers.fromJson(json["followers"]);
    href = json["href"];
    id = json["id"];
    images = json["images"] == null ? null : (json["images"] as List).map((e) => Images.fromJson(e)).toList();
    name = json["name"];
    owner = json["owner"] == null ? null : Owner.fromJson(json["owner"]);
    primaryColor = json["primary_color"];
    public = json["public"];
    snapshotId = json["snapshot_id"];
    tracks = json["tracks"] == null ? null : Tracks1.fromJson(json["tracks"]);
    type = json["type"];
    uri = json["uri"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["collaborative"] = collaborative;
    _data["description"] = description;
    if(externalUrls != null) {
      _data["external_urls"] = externalUrls?.toJson();
    }
    if(followers != null) {
      _data["followers"] = followers?.toJson();
    }
    _data["href"] = href;
    _data["id"] = id;
    if(images != null) {
      _data["images"] = images?.map((e) => e.toJson()).toList();
    }
    _data["name"] = name;
    if(owner != null) {
      _data["owner"] = owner?.toJson();
    }
    _data["primary_color"] = primaryColor;
    _data["public"] = public;
    _data["snapshot_id"] = snapshotId;
    if(tracks != null) {
      _data["tracks"] = tracks?.toJson();
    }
    _data["type"] = type;
    _data["uri"] = uri;
    return _data;
  }
}

class Tracks1 {
  String? href;
  List<Items>? items;
  int? limit;
  dynamic next;
  int? offset;
  dynamic previous;
  int? total;

  Tracks1({this.href, this.items, this.limit, this.next, this.offset, this.previous, this.total});

  Tracks1.fromJson(Map<String, dynamic> json) {
    href = json["href"];
    items = json["items"] == null ? null : (json["items"] as List).map((e) => Items.fromJson(e)).toList();
    limit = json["limit"];
    next = json["next"];
    offset = json["offset"];
    previous = json["previous"];
    total = json["total"];
  }



  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["href"] = href;
    if(items != null) {
      _data["items"] = items?.map((e) => e.toJson()).toList();
    }
    _data["limit"] = limit;
    _data["next"] = next;
    _data["offset"] = offset;
    _data["previous"] = previous;
    _data["total"] = total;
    return _data;
  }
}

class Items {
  String? addedAt;
  AddedBy? addedBy;
  bool? isLocal;
  dynamic primaryColor;
  Track1? track;
  VideoThumbnail? videoThumbnail;

  Items({this.addedAt, this.addedBy, this.isLocal, this.primaryColor, this.track, this.videoThumbnail});

  Items.fromJson(Map<String, dynamic> json) {
    addedAt = json["added_at"];
    addedBy = json["added_by"] == null ? null : AddedBy.fromJson(json["added_by"]);
    isLocal = json["is_local"];
    primaryColor = json["primary_color"];
    track = json["track"] == null ? null : Track1.fromJson(json["track"]);
    videoThumbnail = json["video_thumbnail"] == null ? null : VideoThumbnail.fromJson(json["video_thumbnail"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["added_at"] = addedAt;
    if(addedBy != null) {
      _data["added_by"] = addedBy?.toJson();
    }
    _data["is_local"] = isLocal;
    _data["primary_color"] = primaryColor;
    if(track != null) {
      _data["track"] = track?.toJson();
    }
    if(videoThumbnail != null) {
      _data["video_thumbnail"] = videoThumbnail?.toJson();
    }
    return _data;
  }
}

class VideoThumbnail {
  dynamic url;

  VideoThumbnail({this.url});

  VideoThumbnail.fromJson(Map<String, dynamic> json) {
    url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["url"] = url;
    return _data;
  }
}

class Track1 {
  Album1? album;
  List<Artists1>? artists;
  List<String>? availableMarkets;
  int? discNumber;
  int? durationMs;
  bool? episode;
  bool? explicit;
  ExternalIds? externalIds;
  ExternalUrls6? externalUrls;
  String? href;
  String? id;
  bool? isLocal;
  String? name;
  int? popularity;
  String? previewUrl;
  bool? track;
  int? trackNumber;
  String? type;
  String? uri;

  Track1({this.album, this.artists, this.availableMarkets, this.discNumber, this.durationMs, this.episode, this.explicit, this.externalIds, this.externalUrls, this.href, this.id, this.isLocal, this.name, this.popularity, this.previewUrl, this.track, this.trackNumber, this.type, this.uri});

  Track1.fromJson(Map<String, dynamic> json) {
    //Track= json["track"] == null ? null : (json["track"] as List).map((e) => Track.fromJson(e)).toList();
    album = json["album"] == null ? null : Album1.fromJson(json["album"]);
    artists = json["artists"] == null ? null : (json["artists"] as List).map((e) => Artists1.fromJson(e)).toList();
    availableMarkets = json["available_markets"] == null ? null : List<String>.from(json["available_markets"]);
    discNumber = json["disc_number"];
    durationMs = json["duration_ms"];
    episode = json["episode"];
    explicit = json["explicit"];
    externalIds = json["external_ids"] == null ? null : ExternalIds.fromJson(json["external_ids"]);
    externalUrls = json["external_urls"] == null ? null : ExternalUrls6.fromJson(json["external_urls"]);
    href = json["href"];
    id = json["id"];
    isLocal = json["is_local"];
    name = json["name"];
    popularity = json["popularity"];
    previewUrl = json["preview_url"];
    track = json["track"];
    trackNumber = json["track_number"];
    type = json["type"];
    uri = json["uri"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(album != null) {
      _data["album"] = album?.toJson();
    }
    if(artists != null) {
      _data["artists"] = artists?.map((e) => e.toJson()).toList();
    }
    if(availableMarkets != null) {
      _data["available_markets"] = availableMarkets;
    }
    _data["disc_number"] = discNumber;
    _data["duration_ms"] = durationMs;
    _data["episode"] = episode;
    _data["explicit"] = explicit;
    if(externalIds != null) {
      _data["external_ids"] = externalIds?.toJson();
    }
    if(externalUrls != null) {
      _data["external_urls"] = externalUrls?.toJson();
    }
    _data["href"] = href;
    _data["id"] = id;
    _data["is_local"] = isLocal;
    _data["name"] = name;
    _data["popularity"] = popularity;
    _data["preview_url"] = previewUrl;
    _data["track"] = track;
    _data["track_number"] = trackNumber;
    _data["type"] = type;
    _data["uri"] = uri;
    return _data;
  }
}

class ExternalUrls6 {
  String? spotify;

  ExternalUrls6({this.spotify});

  ExternalUrls6.fromJson(Map<String, dynamic> json) {
    spotify = json["spotify"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["spotify"] = spotify;
    return _data;
  }
}

class ExternalIds {
  String? isrc;

  ExternalIds({this.isrc});

  ExternalIds.fromJson(Map<String, dynamic> json) {
    isrc = json["isrc"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["isrc"] = isrc;
    return _data;
  }
}

class Artists1 {
  ExternalUrls5? externalUrls;
  String? href;
  String? id;
  String? name;
  String? type;
  String? uri;

  Artists1({this.externalUrls, this.href, this.id, this.name, this.type, this.uri});

  Artists1.fromJson(Map<String, dynamic> json) {
    externalUrls = json["external_urls"] == null ? null : ExternalUrls5.fromJson(json["external_urls"]);
    href = json["href"];
    id = json["id"];
    name = json["name"];
    type = json["type"];
    uri = json["uri"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(externalUrls != null) {
      _data["external_urls"] = externalUrls?.toJson();
    }
    _data["href"] = href;
    _data["id"] = id;
    _data["name"] = name;
    _data["type"] = type;
    _data["uri"] = uri;
    return _data;
  }
}

class ExternalUrls5 {
  String? spotify;

  ExternalUrls5({this.spotify});

  ExternalUrls5.fromJson(Map<String, dynamic> json) {
    spotify = json["spotify"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["spotify"] = spotify;
    return _data;
  }
}

class Album1 {
  String? albumType;
  List<Artists>? artists;
  List<String>? availableMarkets;
  ExternalUrls4? externalUrls;
  String? href;
  String? id;
  List<Images1>? images;
  String? name;
  String? releaseDate;
  String? releaseDatePrecision;
  int? totalTracks;
  String? type;
  String? uri;

  Album1({this.albumType, this.artists, this.availableMarkets, this.externalUrls, this.href, this.id, this.images, this.name, this.releaseDate, this.releaseDatePrecision, this.totalTracks, this.type, this.uri});

  Album1.fromJson(Map<String, dynamic> json) {
    albumType = json["album_type"];
    artists = json["artists"] == null ? null : (json["artists"] as List).map((e) => Artists.fromJson(e)).toList();
    availableMarkets = json["available_markets"] == null ? null : List<String>.from(json["available_markets"]);
    externalUrls = json["external_urls"] == null ? null : ExternalUrls4.fromJson(json["external_urls"]);
    href = json["href"];
    id = json["id"];
    images = json["images"] == null ? null : (json["images"] as List).map((e) => Images1.fromJson(e)).toList();
    name = json["name"];
    releaseDate = json["release_date"];
    releaseDatePrecision = json["release_date_precision"];
    totalTracks = json["total_tracks"];
    type = json["type"];
    uri = json["uri"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["album_type"] = albumType;
    if(artists != null) {
      _data["artists"] = artists?.map((e) => e.toJson()).toList();
    }
    if(availableMarkets != null) {
      _data["available_markets"] = availableMarkets;
    }
    if(externalUrls != null) {
      _data["external_urls"] = externalUrls?.toJson();
    }
    _data["href"] = href;
    _data["id"] = id;
    if(images != null) {
      _data["images"] = images?.map((e) => e.toJson()).toList();
    }
    _data["name"] = name;
    _data["release_date"] = releaseDate;
    _data["release_date_precision"] = releaseDatePrecision;
    _data["total_tracks"] = totalTracks;
    _data["type"] = type;
    _data["uri"] = uri;
    return _data;
  }
}

class Images1 {
  int? height;
  String? url;
  int? width;

  Images1({this.height, this.url, this.width});

  Images1.fromJson(Map<String, dynamic> json) {
    height = json["height"];
    url = json["url"];
    width = json["width"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["url"] = url;
    _data["width"] = width;
    return _data;
  }
}

class ExternalUrls4 {
  String? spotify;

  ExternalUrls4({this.spotify});

  ExternalUrls4.fromJson(Map<String, dynamic> json) {
    spotify = json["spotify"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["spotify"] = spotify;
    return _data;
  }
}

class Artists {
  ExternalUrls3? externalUrls;
  String? href;
  String? id;
  String? name;
  String? type;
  String? uri;

  Artists({this.externalUrls, this.href, this.id, this.name, this.type, this.uri});

  Artists.fromJson(Map<String, dynamic> json) {
    externalUrls = json["external_urls"] == null ? null : ExternalUrls3.fromJson(json["external_urls"]);
    href = json["href"];
    id = json["id"];
    name = json["name"];
    type = json["type"];
    uri = json["uri"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(externalUrls != null) {
      _data["external_urls"] = externalUrls?.toJson();
    }
    _data["href"] = href;
    _data["id"] = id;
    _data["name"] = name;
    _data["type"] = type;
    _data["uri"] = uri;
    return _data;
  }
}

class ExternalUrls3 {
  String? spotify;

  ExternalUrls3({this.spotify});

  ExternalUrls3.fromJson(Map<String, dynamic> json) {
    spotify = json["spotify"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["spotify"] = spotify;
    return _data;
  }
}

class AddedBy {
  ExternalUrls2? externalUrls;
  String? href;
  String? id;
  String? type;
  String? uri;

  AddedBy({this.externalUrls, this.href, this.id, this.type, this.uri});

  AddedBy.fromJson(Map<String, dynamic> json) {
    externalUrls = json["external_urls"] == null ? null : ExternalUrls2.fromJson(json["external_urls"]);
    href = json["href"];
    id = json["id"];
    type = json["type"];
    uri = json["uri"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(externalUrls != null) {
      _data["external_urls"] = externalUrls?.toJson();
    }
    _data["href"] = href;
    _data["id"] = id;
    _data["type"] = type;
    _data["uri"] = uri;
    return _data;
  }
}

class ExternalUrls2 {
  String? spotify;

  ExternalUrls2({this.spotify});

  ExternalUrls2.fromJson(Map<String, dynamic> json) {
    spotify = json["spotify"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["spotify"] = spotify;
    return _data;
  }
}

class Owner {
  String? displayName;
  ExternalUrls1? externalUrls;
  String? href;
  String? id;
  String? type;
  String? uri;

  Owner({this.displayName, this.externalUrls, this.href, this.id, this.type, this.uri});

  Owner.fromJson(Map<String, dynamic> json) {
    displayName = json["display_name"];
    externalUrls = json["external_urls"] == null ? null : ExternalUrls1.fromJson(json["external_urls"]);
    href = json["href"];
    id = json["id"];
    type = json["type"];
    uri = json["uri"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["display_name"] = displayName;
    if(externalUrls != null) {
      _data["external_urls"] = externalUrls?.toJson();
    }
    _data["href"] = href;
    _data["id"] = id;
    _data["type"] = type;
    _data["uri"] = uri;
    return _data;
  }
}

class ExternalUrls1 {
  String? spotify;

  ExternalUrls1({this.spotify});

  ExternalUrls1.fromJson(Map<String, dynamic> json) {
    spotify = json["spotify"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["spotify"] = spotify;
    return _data;
  }
}

class Images {
  int? height;
  String? url;
  int? width;

  Images({this.height, this.url, this.width});

  Images.fromJson(Map<String, dynamic> json) {
    height = json["height"];
    url = json["url"];
    width = json["width"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["url"] = url;
    _data["width"] = width;
    return _data;
  }
}

class Followers {
  dynamic href;
  int? total;

  Followers({this.href, this.total});

  Followers.fromJson(Map<String, dynamic> json) {
    href = json["href"];
    total = json["total"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["href"] = href;
    _data["total"] = total;
    return _data;
  }
}

class ExternalUrls {
  String? spotify;

  ExternalUrls({this.spotify});

  ExternalUrls.fromJson(Map<String, dynamic> json) {
    spotify = json["spotify"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["spotify"] = spotify;
    return _data;
  }
}
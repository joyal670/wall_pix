
class LikePhotoResponse {
  Photo? photo;
  User? user;

  LikePhotoResponse({this.photo, this.user});

  LikePhotoResponse.fromJson(Map<String, dynamic> json) {
    if(json["photo"] is Map) {
      photo = json["photo"] == null ? null : Photo.fromJson(json["photo"]);
    }
    if(json["user"] is Map) {
      user = json["user"] == null ? null : User.fromJson(json["user"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(photo != null) {
      _data["photo"] = photo?.toJson();
    }
    if(user != null) {
      _data["user"] = user?.toJson();
    }
    return _data;
  }
}

class User {
  String? id;
  String? username;
  String? name;
  Links1? links;

  User({this.id, this.username, this.name, this.links});

  User.fromJson(Map<String, dynamic> json) {
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["username"] is String) {
      username = json["username"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["links"] is Map) {
      links = json["links"] == null ? null : Links1.fromJson(json["links"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["username"] = username;
    _data["name"] = name;
    if(links != null) {
      _data["links"] = links?.toJson();
    }
    return _data;
  }
}

class Links1 {
  String? self;
  String? html;
  String? photos;
  String? likes;

  Links1({this.self, this.html, this.photos, this.likes});

  Links1.fromJson(Map<String, dynamic> json) {
    if(json["self"] is String) {
      self = json["self"];
    }
    if(json["html"] is String) {
      html = json["html"];
    }
    if(json["photos"] is String) {
      photos = json["photos"];
    }
    if(json["likes"] is String) {
      likes = json["likes"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["self"] = self;
    _data["html"] = html;
    _data["photos"] = photos;
    _data["likes"] = likes;
    return _data;
  }
}

class Photo {
  String? id;
  int? width;
  int? height;
  String? color;
  String? blurHash;
  int? likes;
  bool? likedByUser;
  String? description;
  Urls? urls;
  Links? links;

  Photo({this.id, this.width, this.height, this.color, this.blurHash, this.likes, this.likedByUser, this.description, this.urls, this.links});

  Photo.fromJson(Map<String, dynamic> json) {
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["width"] is int) {
      width = json["width"];
    }
    if(json["height"] is int) {
      height = json["height"];
    }
    if(json["color"] is String) {
      color = json["color"];
    }
    if(json["blur_hash"] is String) {
      blurHash = json["blur_hash"];
    }
    if(json["likes"] is int) {
      likes = json["likes"];
    }
    if(json["liked_by_user"] is bool) {
      likedByUser = json["liked_by_user"];
    }
    if(json["description"] is String) {
      description = json["description"];
    }
    if(json["urls"] is Map) {
      urls = json["urls"] == null ? null : Urls.fromJson(json["urls"]);
    }
    if(json["links"] is Map) {
      links = json["links"] == null ? null : Links.fromJson(json["links"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["width"] = width;
    _data["height"] = height;
    _data["color"] = color;
    _data["blur_hash"] = blurHash;
    _data["likes"] = likes;
    _data["liked_by_user"] = likedByUser;
    _data["description"] = description;
    if(urls != null) {
      _data["urls"] = urls?.toJson();
    }
    if(links != null) {
      _data["links"] = links?.toJson();
    }
    return _data;
  }
}

class Links {
  String? self;
  String? html;
  String? download;

  Links({this.self, this.html, this.download});

  Links.fromJson(Map<String, dynamic> json) {
    if(json["self"] is String) {
      self = json["self"];
    }
    if(json["html"] is String) {
      html = json["html"];
    }
    if(json["download"] is String) {
      download = json["download"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["self"] = self;
    _data["html"] = html;
    _data["download"] = download;
    return _data;
  }
}

class Urls {
  String? raw;
  String? full;
  String? regular;
  String? small;
  String? thumb;

  Urls({this.raw, this.full, this.regular, this.small, this.thumb});

  Urls.fromJson(Map<String, dynamic> json) {
    if(json["raw"] is String) {
      raw = json["raw"];
    }
    if(json["full"] is String) {
      full = json["full"];
    }
    if(json["regular"] is String) {
      regular = json["regular"];
    }
    if(json["small"] is String) {
      small = json["small"];
    }
    if(json["thumb"] is String) {
      thumb = json["thumb"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["raw"] = raw;
    _data["full"] = full;
    _data["regular"] = regular;
    _data["small"] = small;
    _data["thumb"] = thumb;
    return _data;
  }
}
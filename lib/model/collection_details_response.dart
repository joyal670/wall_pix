
class CollectionDetailsResponse {
  String? id;
  String? slug;
  String? createdAt;
  String? updatedAt;
  String? promotedAt;
  int? width;
  int? height;
  String? color;
  String? blurHash;
  dynamic description;
  String? altDescription;
  List<dynamic>? breadcrumbs;
  Urls? urls;
  Links? links;
  int? likes;
  bool? likedByUser;
  List<dynamic>? currentUserCollections;
  dynamic sponsorship;
  TopicSubmissions? topicSubmissions;
  User? user;

  CollectionDetailsResponse({this.id, this.slug, this.createdAt, this.updatedAt, this.promotedAt, this.width, this.height, this.color, this.blurHash, this.description, this.altDescription, this.breadcrumbs, this.urls, this.links, this.likes, this.likedByUser, this.currentUserCollections, this.sponsorship, this.topicSubmissions, this.user});

  CollectionDetailsResponse.fromJson(Map<String, dynamic> json) {
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["slug"] is String) {
      slug = json["slug"];
    }
    if(json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if(json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
    if(json["promoted_at"] is String) {
      promotedAt = json["promoted_at"];
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
    description = json["description"];
    if(json["alt_description"] is String) {
      altDescription = json["alt_description"];
    }
    if(json["breadcrumbs"] is List) {
      breadcrumbs = json["breadcrumbs"] ?? [];
    }
    if(json["urls"] is Map) {
      urls = json["urls"] == null ? null : Urls.fromJson(json["urls"]);
    }
    if(json["links"] is Map) {
      links = json["links"] == null ? null : Links.fromJson(json["links"]);
    }
    if(json["likes"] is int) {
      likes = json["likes"];
    }
    if(json["liked_by_user"] is bool) {
      likedByUser = json["liked_by_user"];
    }
    if(json["current_user_collections"] is List) {
      currentUserCollections = json["current_user_collections"] ?? [];
    }
    sponsorship = json["sponsorship"];
    if(json["topic_submissions"] is Map) {
      topicSubmissions = json["topic_submissions"] == null ? null : TopicSubmissions.fromJson(json["topic_submissions"]);
    }
    if(json["user"] is Map) {
      user = json["user"] == null ? null : User.fromJson(json["user"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["slug"] = slug;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    _data["promoted_at"] = promotedAt;
    _data["width"] = width;
    _data["height"] = height;
    _data["color"] = color;
    _data["blur_hash"] = blurHash;
    _data["description"] = description;
    _data["alt_description"] = altDescription;
    if(breadcrumbs != null) {
      _data["breadcrumbs"] = breadcrumbs;
    }
    if(urls != null) {
      _data["urls"] = urls?.toJson();
    }
    if(links != null) {
      _data["links"] = links?.toJson();
    }
    _data["likes"] = likes;
    _data["liked_by_user"] = likedByUser;
    if(currentUserCollections != null) {
      _data["current_user_collections"] = currentUserCollections;
    }
    _data["sponsorship"] = sponsorship;
    if(topicSubmissions != null) {
      _data["topic_submissions"] = topicSubmissions?.toJson();
    }
    if(user != null) {
      _data["user"] = user?.toJson();
    }
    return _data;
  }
}

class User {
  String? id;
  String? updatedAt;
  String? username;
  String? name;
  String? firstName;
  String? lastName;
  String? twitterUsername;
  String? portfolioUrl;
  String? bio;
  String? location;
  Links1? links;
  ProfileImage? profileImage;
  String? instagramUsername;
  int? totalCollections;
  int? totalLikes;
  int? totalPhotos;
  bool? acceptedTos;
  bool? forHire;
  Social? social;

  User({this.id, this.updatedAt, this.username, this.name, this.firstName, this.lastName, this.twitterUsername, this.portfolioUrl, this.bio, this.location, this.links, this.profileImage, this.instagramUsername, this.totalCollections, this.totalLikes, this.totalPhotos, this.acceptedTos, this.forHire, this.social});

  User.fromJson(Map<String, dynamic> json) {
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
    if(json["username"] is String) {
      username = json["username"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["first_name"] is String) {
      firstName = json["first_name"];
    }
    if(json["last_name"] is String) {
      lastName = json["last_name"];
    }
    if(json["twitter_username"] is String) {
      twitterUsername = json["twitter_username"];
    }
    if(json["portfolio_url"] is String) {
      portfolioUrl = json["portfolio_url"];
    }
    if(json["bio"] is String) {
      bio = json["bio"];
    }
    if(json["location"] is String) {
      location = json["location"];
    }
    if(json["links"] is Map) {
      links = json["links"] == null ? null : Links1.fromJson(json["links"]);
    }
    if(json["profile_image"] is Map) {
      profileImage = json["profile_image"] == null ? null : ProfileImage.fromJson(json["profile_image"]);
    }
    if(json["instagram_username"] is String) {
      instagramUsername = json["instagram_username"];
    }
    if(json["total_collections"] is int) {
      totalCollections = json["total_collections"];
    }
    if(json["total_likes"] is int) {
      totalLikes = json["total_likes"];
    }
    if(json["total_photos"] is int) {
      totalPhotos = json["total_photos"];
    }
    if(json["accepted_tos"] is bool) {
      acceptedTos = json["accepted_tos"];
    }
    if(json["for_hire"] is bool) {
      forHire = json["for_hire"];
    }
    if(json["social"] is Map) {
      social = json["social"] == null ? null : Social.fromJson(json["social"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["updated_at"] = updatedAt;
    _data["username"] = username;
    _data["name"] = name;
    _data["first_name"] = firstName;
    _data["last_name"] = lastName;
    _data["twitter_username"] = twitterUsername;
    _data["portfolio_url"] = portfolioUrl;
    _data["bio"] = bio;
    _data["location"] = location;
    if(links != null) {
      _data["links"] = links?.toJson();
    }
    if(profileImage != null) {
      _data["profile_image"] = profileImage?.toJson();
    }
    _data["instagram_username"] = instagramUsername;
    _data["total_collections"] = totalCollections;
    _data["total_likes"] = totalLikes;
    _data["total_photos"] = totalPhotos;
    _data["accepted_tos"] = acceptedTos;
    _data["for_hire"] = forHire;
    if(social != null) {
      _data["social"] = social?.toJson();
    }
    return _data;
  }
}

class Social {
  String? instagramUsername;
  String? portfolioUrl;
  String? twitterUsername;
  dynamic paypalEmail;

  Social({this.instagramUsername, this.portfolioUrl, this.twitterUsername, this.paypalEmail});

  Social.fromJson(Map<String, dynamic> json) {
    if(json["instagram_username"] is String) {
      instagramUsername = json["instagram_username"];
    }
    if(json["portfolio_url"] is String) {
      portfolioUrl = json["portfolio_url"];
    }
    if(json["twitter_username"] is String) {
      twitterUsername = json["twitter_username"];
    }
    paypalEmail = json["paypal_email"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["instagram_username"] = instagramUsername;
    _data["portfolio_url"] = portfolioUrl;
    _data["twitter_username"] = twitterUsername;
    _data["paypal_email"] = paypalEmail;
    return _data;
  }
}

class ProfileImage {
  String? small;
  String? medium;
  String? large;

  ProfileImage({this.small, this.medium, this.large});

  ProfileImage.fromJson(Map<String, dynamic> json) {
    if(json["small"] is String) {
      small = json["small"];
    }
    if(json["medium"] is String) {
      medium = json["medium"];
    }
    if(json["large"] is String) {
      large = json["large"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["small"] = small;
    _data["medium"] = medium;
    _data["large"] = large;
    return _data;
  }
}

class Links1 {
  String? self;
  String? html;
  String? photos;
  String? likes;
  String? portfolio;
  String? following;
  String? followers;

  Links1({this.self, this.html, this.photos, this.likes, this.portfolio, this.following, this.followers});

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
    if(json["portfolio"] is String) {
      portfolio = json["portfolio"];
    }
    if(json["following"] is String) {
      following = json["following"];
    }
    if(json["followers"] is String) {
      followers = json["followers"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["self"] = self;
    _data["html"] = html;
    _data["photos"] = photos;
    _data["likes"] = likes;
    _data["portfolio"] = portfolio;
    _data["following"] = following;
    _data["followers"] = followers;
    return _data;
  }
}

class TopicSubmissions {
  Monochromatic? monochromatic;
  Nature? nature;
  ArchitectureInterior? architectureInterior;

  TopicSubmissions({this.monochromatic, this.nature, this.architectureInterior});

  TopicSubmissions.fromJson(Map<String, dynamic> json) {
    if(json["monochromatic"] is Map) {
      monochromatic = json["monochromatic"] == null ? null : Monochromatic.fromJson(json["monochromatic"]);
    }
    if(json["nature"] is Map) {
      nature = json["nature"] == null ? null : Nature.fromJson(json["nature"]);
    }
    if(json["architecture-interior"] is Map) {
      architectureInterior = json["architecture-interior"] == null ? null : ArchitectureInterior.fromJson(json["architecture-interior"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(monochromatic != null) {
      _data["monochromatic"] = monochromatic?.toJson();
    }
    if(nature != null) {
      _data["nature"] = nature?.toJson();
    }
    if(architectureInterior != null) {
      _data["architecture-interior"] = architectureInterior?.toJson();
    }
    return _data;
  }
}

class ArchitectureInterior {
  String? status;
  String? approvedOn;

  ArchitectureInterior({this.status, this.approvedOn});

  ArchitectureInterior.fromJson(Map<String, dynamic> json) {
    if(json["status"] is String) {
      status = json["status"];
    }
    if(json["approved_on"] is String) {
      approvedOn = json["approved_on"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["status"] = status;
    _data["approved_on"] = approvedOn;
    return _data;
  }
}

class Nature {
  String? status;

  Nature({this.status});

  Nature.fromJson(Map<String, dynamic> json) {
    if(json["status"] is String) {
      status = json["status"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["status"] = status;
    return _data;
  }
}

class Monochromatic {
  String? status;
  String? approvedOn;

  Monochromatic({this.status, this.approvedOn});

  Monochromatic.fromJson(Map<String, dynamic> json) {
    if(json["status"] is String) {
      status = json["status"];
    }
    if(json["approved_on"] is String) {
      approvedOn = json["approved_on"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["status"] = status;
    _data["approved_on"] = approvedOn;
    return _data;
  }
}

class Links {
  String? self;
  String? html;
  String? download;
  String? downloadLocation;

  Links({this.self, this.html, this.download, this.downloadLocation});

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
    if(json["download_location"] is String) {
      downloadLocation = json["download_location"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["self"] = self;
    _data["html"] = html;
    _data["download"] = download;
    _data["download_location"] = downloadLocation;
    return _data;
  }
}

class Urls {
  String? raw;
  String? full;
  String? regular;
  String? small;
  String? thumb;
  String? smallS3;

  Urls({this.raw, this.full, this.regular, this.small, this.thumb, this.smallS3});

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
    if(json["small_s3"] is String) {
      smallS3 = json["small_s3"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["raw"] = raw;
    _data["full"] = full;
    _data["regular"] = regular;
    _data["small"] = small;
    _data["thumb"] = thumb;
    _data["small_s3"] = smallS3;
    return _data;
  }
}
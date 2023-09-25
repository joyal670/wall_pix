class PhotoModel {
  String? id;
  String? slug;
  String? createdAt;
  String? updatedAt;
  String? promotedAt;
  int? width;
  int? height;
  String? color;
  String? blurHash;
  String? description;
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
  Exif? exif;
  Location? location;
  Meta? meta;
  bool? publicDomain;
  List<Tags>? tags;
  List<TagsPreview>? tagsPreview;
  int? views;
  int? downloads;
  List<Topics>? topics;
  RelatedCollections? relatedCollections;

  PhotoModel(
      {this.id,
      this.slug,
      this.createdAt,
      this.updatedAt,
      this.promotedAt,
      this.width,
      this.height,
      this.color,
      this.blurHash,
      this.description,
      this.altDescription,
      this.breadcrumbs,
      this.urls,
      this.links,
      this.likes,
      this.likedByUser,
      this.currentUserCollections,
      this.sponsorship,
      this.topicSubmissions,
      this.user,
      this.exif,
      this.location,
      this.meta,
      this.publicDomain,
      this.tags,
      this.tagsPreview,
      this.views,
      this.downloads,
      this.topics,
      this.relatedCollections});

  PhotoModel.fromJson(Map<String, dynamic> json) {
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["slug"] is String) {
      slug = json["slug"];
    }
    if (json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if (json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
    if (json["promoted_at"] is String) {
      promotedAt = json["promoted_at"];
    }
    if (json["width"] is int) {
      width = json["width"];
    }
    if (json["height"] is int) {
      height = json["height"];
    }
    if (json["color"] is String) {
      color = json["color"];
    }
    if (json["blur_hash"] is String) {
      blurHash = json["blur_hash"];
    }
    if (json["description"] is String) {
      description = json["description"];
    }
    if (json["alt_description"] is String) {
      altDescription = json["alt_description"];
    }
    if (json["breadcrumbs"] is List) {
      breadcrumbs = json["breadcrumbs"] ?? [];
    }
    if (json["urls"] is Map) {
      urls = json["urls"] == null ? null : Urls.fromJson(json["urls"]);
    }
    if (json["links"] is Map) {
      links = json["links"] == null ? null : Links.fromJson(json["links"]);
    }
    if (json["likes"] is int) {
      likes = json["likes"];
    }
    if (json["liked_by_user"] is bool) {
      likedByUser = json["liked_by_user"];
    }
    if (json["current_user_collections"] is List) {
      currentUserCollections = json["current_user_collections"] ?? [];
    }
    sponsorship = json["sponsorship"];
    if (json["topic_submissions"] is Map) {
      topicSubmissions = json["topic_submissions"] == null
          ? null
          : TopicSubmissions.fromJson(json["topic_submissions"]);
    }
    if (json["user"] is Map) {
      user = json["user"] == null ? null : User.fromJson(json["user"]);
    }
    if (json["exif"] is Map) {
      exif = json["exif"] == null ? null : Exif.fromJson(json["exif"]);
    }
    if (json["location"] is Map) {
      location =
          json["location"] == null ? null : Location.fromJson(json["location"]);
    }
    if (json["meta"] is Map) {
      meta = json["meta"] == null ? null : Meta.fromJson(json["meta"]);
    }
    if (json["public_domain"] is bool) {
      publicDomain = json["public_domain"];
    }
    if (json["tags"] is List) {
      tags = json["tags"] == null
          ? null
          : (json["tags"] as List).map((e) => Tags.fromJson(e)).toList();
    }
    if (json["tags_preview"] is List) {
      tagsPreview = json["tags_preview"] == null
          ? null
          : (json["tags_preview"] as List)
              .map((e) => TagsPreview.fromJson(e))
              .toList();
    }
    if (json["views"] is int) {
      views = json["views"];
    }
    if (json["downloads"] is int) {
      downloads = json["downloads"];
    }
    if (json["topics"] is List) {
      topics = json["topics"] == null
          ? null
          : (json["topics"] as List).map((e) => Topics.fromJson(e)).toList();
    }
    if (json["related_collections"] is Map) {
      relatedCollections = json["related_collections"] == null
          ? null
          : RelatedCollections.fromJson(json["related_collections"]);
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
    if (breadcrumbs != null) {
      _data["breadcrumbs"] = breadcrumbs;
    }
    if (urls != null) {
      _data["urls"] = urls?.toJson();
    }
    if (links != null) {
      _data["links"] = links?.toJson();
    }
    _data["likes"] = likes;
    _data["liked_by_user"] = likedByUser;
    if (currentUserCollections != null) {
      _data["current_user_collections"] = currentUserCollections;
    }
    _data["sponsorship"] = sponsorship;
    if (topicSubmissions != null) {
      _data["topic_submissions"] = topicSubmissions?.toJson();
    }
    if (user != null) {
      _data["user"] = user?.toJson();
    }
    if (exif != null) {
      _data["exif"] = exif?.toJson();
    }
    if (location != null) {
      _data["location"] = location?.toJson();
    }
    if (meta != null) {
      _data["meta"] = meta?.toJson();
    }
    _data["public_domain"] = publicDomain;
    if (tags != null) {
      _data["tags"] = tags?.map((e) => e.toJson()).toList();
    }
    if (tagsPreview != null) {
      _data["tags_preview"] = tagsPreview?.map((e) => e.toJson()).toList();
    }
    _data["views"] = views;
    _data["downloads"] = downloads;
    if (topics != null) {
      _data["topics"] = topics?.map((e) => e.toJson()).toList();
    }
    if (relatedCollections != null) {
      _data["related_collections"] = relatedCollections?.toJson();
    }
    return _data;
  }
}

class RelatedCollections {
  int? total;
  String? type;
  List<Results>? results;

  RelatedCollections({this.total, this.type, this.results});

  RelatedCollections.fromJson(Map<String, dynamic> json) {
    if (json["total"] is int) {
      total = json["total"];
    }
    if (json["type"] is String) {
      type = json["type"];
    }
    if (json["results"] is List) {
      results = json["results"] == null
          ? null
          : (json["results"] as List).map((e) => Results.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["total"] = total;
    _data["type"] = type;
    if (results != null) {
      _data["results"] = results?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Results {
  String? id;
  String? title;
  dynamic description;
  String? publishedAt;
  String? lastCollectedAt;
  String? updatedAt;
  bool? featured;
  int? totalPhotos;
  bool? private;
  String? shareKey;
  List<Tags1>? tags;
  Links4? links;
  User2? user;
  CoverPhoto1? coverPhoto;
  List<PreviewPhotos>? previewPhotos;

  Results(
      {this.id,
      this.title,
      this.description,
      this.publishedAt,
      this.lastCollectedAt,
      this.updatedAt,
      this.featured,
      this.totalPhotos,
      this.private,
      this.shareKey,
      this.tags,
      this.links,
      this.user,
      this.coverPhoto,
      this.previewPhotos});

  Results.fromJson(Map<String, dynamic> json) {
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["title"] is String) {
      title = json["title"];
    }
    description = json["description"];
    if (json["published_at"] is String) {
      publishedAt = json["published_at"];
    }
    if (json["last_collected_at"] is String) {
      lastCollectedAt = json["last_collected_at"];
    }
    if (json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
    if (json["featured"] is bool) {
      featured = json["featured"];
    }
    if (json["total_photos"] is int) {
      totalPhotos = json["total_photos"];
    }
    if (json["private"] is bool) {
      private = json["private"];
    }
    if (json["share_key"] is String) {
      shareKey = json["share_key"];
    }
    if (json["tags"] is List) {
      tags = json["tags"] == null
          ? null
          : (json["tags"] as List).map((e) => Tags1.fromJson(e)).toList();
    }
    if (json["links"] is Map) {
      links = json["links"] == null ? null : Links4.fromJson(json["links"]);
    }
    if (json["user"] is Map) {
      user = json["user"] == null ? null : User2.fromJson(json["user"]);
    }
    if (json["cover_photo"] is Map) {
      coverPhoto = json["cover_photo"] == null
          ? null
          : CoverPhoto1.fromJson(json["cover_photo"]);
    }
    if (json["preview_photos"] is List) {
      previewPhotos = json["preview_photos"] == null
          ? null
          : (json["preview_photos"] as List)
              .map((e) => PreviewPhotos.fromJson(e))
              .toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["title"] = title;
    _data["description"] = description;
    _data["published_at"] = publishedAt;
    _data["last_collected_at"] = lastCollectedAt;
    _data["updated_at"] = updatedAt;
    _data["featured"] = featured;
    _data["total_photos"] = totalPhotos;
    _data["private"] = private;
    _data["share_key"] = shareKey;
    if (tags != null) {
      _data["tags"] = tags?.map((e) => e.toJson()).toList();
    }
    if (links != null) {
      _data["links"] = links?.toJson();
    }
    if (user != null) {
      _data["user"] = user?.toJson();
    }
    if (coverPhoto != null) {
      _data["cover_photo"] = coverPhoto?.toJson();
    }
    if (previewPhotos != null) {
      _data["preview_photos"] = previewPhotos?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class PreviewPhotos {
  String? id;
  String? slug;
  String? createdAt;
  String? updatedAt;
  String? blurHash;
  Urls3? urls;

  PreviewPhotos(
      {this.id,
      this.slug,
      this.createdAt,
      this.updatedAt,
      this.blurHash,
      this.urls});

  PreviewPhotos.fromJson(Map<String, dynamic> json) {
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["slug"] is String) {
      slug = json["slug"];
    }
    if (json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if (json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
    if (json["blur_hash"] is String) {
      blurHash = json["blur_hash"];
    }
    if (json["urls"] is Map) {
      urls = json["urls"] == null ? null : Urls3.fromJson(json["urls"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["slug"] = slug;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    _data["blur_hash"] = blurHash;
    if (urls != null) {
      _data["urls"] = urls?.toJson();
    }
    return _data;
  }
}

class Urls3 {
  String? raw;
  String? full;
  String? regular;
  String? small;
  String? thumb;
  String? smallS3;

  Urls3(
      {this.raw,
      this.full,
      this.regular,
      this.small,
      this.thumb,
      this.smallS3});

  Urls3.fromJson(Map<String, dynamic> json) {
    if (json["raw"] is String) {
      raw = json["raw"];
    }
    if (json["full"] is String) {
      full = json["full"];
    }
    if (json["regular"] is String) {
      regular = json["regular"];
    }
    if (json["small"] is String) {
      small = json["small"];
    }
    if (json["thumb"] is String) {
      thumb = json["thumb"];
    }
    if (json["small_s3"] is String) {
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

class CoverPhoto1 {
  String? id;
  String? slug;
  String? createdAt;
  String? updatedAt;
  String? promotedAt;
  int? width;
  int? height;
  String? color;
  String? blurHash;
  String? description;
  String? altDescription;
  List<dynamic>? breadcrumbs;
  Urls2? urls;
  Links6? links;
  int? likes;
  bool? likedByUser;
  List<dynamic>? currentUserCollections;
  dynamic sponsorship;
  TopicSubmissions2? topicSubmissions;
  User3? user;

  CoverPhoto1(
      {this.id,
      this.slug,
      this.createdAt,
      this.updatedAt,
      this.promotedAt,
      this.width,
      this.height,
      this.color,
      this.blurHash,
      this.description,
      this.altDescription,
      this.breadcrumbs,
      this.urls,
      this.links,
      this.likes,
      this.likedByUser,
      this.currentUserCollections,
      this.sponsorship,
      this.topicSubmissions,
      this.user});

  CoverPhoto1.fromJson(Map<String, dynamic> json) {
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["slug"] is String) {
      slug = json["slug"];
    }
    if (json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if (json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
    if (json["promoted_at"] is String) {
      promotedAt = json["promoted_at"];
    }
    if (json["width"] is int) {
      width = json["width"];
    }
    if (json["height"] is int) {
      height = json["height"];
    }
    if (json["color"] is String) {
      color = json["color"];
    }
    if (json["blur_hash"] is String) {
      blurHash = json["blur_hash"];
    }
    if (json["description"] is String) {
      description = json["description"];
    }
    if (json["alt_description"] is String) {
      altDescription = json["alt_description"];
    }
    if (json["breadcrumbs"] is List) {
      breadcrumbs = json["breadcrumbs"] ?? [];
    }
    if (json["urls"] is Map) {
      urls = json["urls"] == null ? null : Urls2.fromJson(json["urls"]);
    }
    if (json["links"] is Map) {
      links = json["links"] == null ? null : Links6.fromJson(json["links"]);
    }
    if (json["likes"] is int) {
      likes = json["likes"];
    }
    if (json["liked_by_user"] is bool) {
      likedByUser = json["liked_by_user"];
    }
    if (json["current_user_collections"] is List) {
      currentUserCollections = json["current_user_collections"] ?? [];
    }
    sponsorship = json["sponsorship"];
    if (json["topic_submissions"] is Map) {
      topicSubmissions = json["topic_submissions"] == null
          ? null
          : TopicSubmissions2.fromJson(json["topic_submissions"]);
    }
    if (json["user"] is Map) {
      user = json["user"] == null ? null : User3.fromJson(json["user"]);
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
    if (breadcrumbs != null) {
      _data["breadcrumbs"] = breadcrumbs;
    }
    if (urls != null) {
      _data["urls"] = urls?.toJson();
    }
    if (links != null) {
      _data["links"] = links?.toJson();
    }
    _data["likes"] = likes;
    _data["liked_by_user"] = likedByUser;
    if (currentUserCollections != null) {
      _data["current_user_collections"] = currentUserCollections;
    }
    _data["sponsorship"] = sponsorship;
    if (topicSubmissions != null) {
      _data["topic_submissions"] = topicSubmissions?.toJson();
    }
    if (user != null) {
      _data["user"] = user?.toJson();
    }
    return _data;
  }
}

class User3 {
  String? id;
  String? updatedAt;
  String? username;
  String? name;
  String? firstName;
  String? lastName;
  String? twitterUsername;
  dynamic portfolioUrl;
  dynamic bio;
  String? location;
  Links7? links;
  ProfileImage3? profileImage;
  String? instagramUsername;
  int? totalCollections;
  int? totalLikes;
  int? totalPhotos;
  bool? acceptedTos;
  bool? forHire;
  Social3? social;

  User3(
      {this.id,
      this.updatedAt,
      this.username,
      this.name,
      this.firstName,
      this.lastName,
      this.twitterUsername,
      this.portfolioUrl,
      this.bio,
      this.location,
      this.links,
      this.profileImage,
      this.instagramUsername,
      this.totalCollections,
      this.totalLikes,
      this.totalPhotos,
      this.acceptedTos,
      this.forHire,
      this.social});

  User3.fromJson(Map<String, dynamic> json) {
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
    if (json["username"] is String) {
      username = json["username"];
    }
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["first_name"] is String) {
      firstName = json["first_name"];
    }
    if (json["last_name"] is String) {
      lastName = json["last_name"];
    }
    if (json["twitter_username"] is String) {
      twitterUsername = json["twitter_username"];
    }
    portfolioUrl = json["portfolio_url"];
    bio = json["bio"];
    if (json["location"] is String) {
      location = json["location"];
    }
    if (json["links"] is Map) {
      links = json["links"] == null ? null : Links7.fromJson(json["links"]);
    }
    if (json["profile_image"] is Map) {
      profileImage = json["profile_image"] == null
          ? null
          : ProfileImage3.fromJson(json["profile_image"]);
    }
    if (json["instagram_username"] is String) {
      instagramUsername = json["instagram_username"];
    }
    if (json["total_collections"] is int) {
      totalCollections = json["total_collections"];
    }
    if (json["total_likes"] is int) {
      totalLikes = json["total_likes"];
    }
    if (json["total_photos"] is int) {
      totalPhotos = json["total_photos"];
    }
    if (json["accepted_tos"] is bool) {
      acceptedTos = json["accepted_tos"];
    }
    if (json["for_hire"] is bool) {
      forHire = json["for_hire"];
    }
    if (json["social"] is Map) {
      social = json["social"] == null ? null : Social3.fromJson(json["social"]);
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
    if (links != null) {
      _data["links"] = links?.toJson();
    }
    if (profileImage != null) {
      _data["profile_image"] = profileImage?.toJson();
    }
    _data["instagram_username"] = instagramUsername;
    _data["total_collections"] = totalCollections;
    _data["total_likes"] = totalLikes;
    _data["total_photos"] = totalPhotos;
    _data["accepted_tos"] = acceptedTos;
    _data["for_hire"] = forHire;
    if (social != null) {
      _data["social"] = social?.toJson();
    }
    return _data;
  }
}

class Social3 {
  String? instagramUsername;
  dynamic portfolioUrl;
  String? twitterUsername;
  dynamic paypalEmail;

  Social3(
      {this.instagramUsername,
      this.portfolioUrl,
      this.twitterUsername,
      this.paypalEmail});

  Social3.fromJson(Map<String, dynamic> json) {
    if (json["instagram_username"] is String) {
      instagramUsername = json["instagram_username"];
    }
    portfolioUrl = json["portfolio_url"];
    if (json["twitter_username"] is String) {
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

class ProfileImage3 {
  String? small;
  String? medium;
  String? large;

  ProfileImage3({this.small, this.medium, this.large});

  ProfileImage3.fromJson(Map<String, dynamic> json) {
    if (json["small"] is String) {
      small = json["small"];
    }
    if (json["medium"] is String) {
      medium = json["medium"];
    }
    if (json["large"] is String) {
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

class Links7 {
  String? self;
  String? html;
  String? photos;
  String? likes;
  String? portfolio;
  String? following;
  String? followers;

  Links7(
      {this.self,
      this.html,
      this.photos,
      this.likes,
      this.portfolio,
      this.following,
      this.followers});

  Links7.fromJson(Map<String, dynamic> json) {
    if (json["self"] is String) {
      self = json["self"];
    }
    if (json["html"] is String) {
      html = json["html"];
    }
    if (json["photos"] is String) {
      photos = json["photos"];
    }
    if (json["likes"] is String) {
      likes = json["likes"];
    }
    if (json["portfolio"] is String) {
      portfolio = json["portfolio"];
    }
    if (json["following"] is String) {
      following = json["following"];
    }
    if (json["followers"] is String) {
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

class TopicSubmissions2 {
  TopicSubmissions2();

  TopicSubmissions2.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};

    return _data;
  }
}

class Links6 {
  String? self;
  String? html;
  String? download;
  String? downloadLocation;

  Links6({this.self, this.html, this.download, this.downloadLocation});

  Links6.fromJson(Map<String, dynamic> json) {
    if (json["self"] is String) {
      self = json["self"];
    }
    if (json["html"] is String) {
      html = json["html"];
    }
    if (json["download"] is String) {
      download = json["download"];
    }
    if (json["download_location"] is String) {
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

class Urls2 {
  String? raw;
  String? full;
  String? regular;
  String? small;
  String? thumb;
  String? smallS3;

  Urls2(
      {this.raw,
      this.full,
      this.regular,
      this.small,
      this.thumb,
      this.smallS3});

  Urls2.fromJson(Map<String, dynamic> json) {
    if (json["raw"] is String) {
      raw = json["raw"];
    }
    if (json["full"] is String) {
      full = json["full"];
    }
    if (json["regular"] is String) {
      regular = json["regular"];
    }
    if (json["small"] is String) {
      small = json["small"];
    }
    if (json["thumb"] is String) {
      thumb = json["thumb"];
    }
    if (json["small_s3"] is String) {
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

class User2 {
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
  Links5? links;
  ProfileImage2? profileImage;
  String? instagramUsername;
  int? totalCollections;
  int? totalLikes;
  int? totalPhotos;
  bool? acceptedTos;
  bool? forHire;
  Social2? social;

  User2(
      {this.id,
      this.updatedAt,
      this.username,
      this.name,
      this.firstName,
      this.lastName,
      this.twitterUsername,
      this.portfolioUrl,
      this.bio,
      this.location,
      this.links,
      this.profileImage,
      this.instagramUsername,
      this.totalCollections,
      this.totalLikes,
      this.totalPhotos,
      this.acceptedTos,
      this.forHire,
      this.social});

  User2.fromJson(Map<String, dynamic> json) {
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
    if (json["username"] is String) {
      username = json["username"];
    }
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["first_name"] is String) {
      firstName = json["first_name"];
    }
    if (json["last_name"] is String) {
      lastName = json["last_name"];
    }
    if (json["twitter_username"] is String) {
      twitterUsername = json["twitter_username"];
    }
    if (json["portfolio_url"] is String) {
      portfolioUrl = json["portfolio_url"];
    }
    if (json["bio"] is String) {
      bio = json["bio"];
    }
    if (json["location"] is String) {
      location = json["location"];
    }
    if (json["links"] is Map) {
      links = json["links"] == null ? null : Links5.fromJson(json["links"]);
    }
    if (json["profile_image"] is Map) {
      profileImage = json["profile_image"] == null
          ? null
          : ProfileImage2.fromJson(json["profile_image"]);
    }
    if (json["instagram_username"] is String) {
      instagramUsername = json["instagram_username"];
    }
    if (json["total_collections"] is int) {
      totalCollections = json["total_collections"];
    }
    if (json["total_likes"] is int) {
      totalLikes = json["total_likes"];
    }
    if (json["total_photos"] is int) {
      totalPhotos = json["total_photos"];
    }
    if (json["accepted_tos"] is bool) {
      acceptedTos = json["accepted_tos"];
    }
    if (json["for_hire"] is bool) {
      forHire = json["for_hire"];
    }
    if (json["social"] is Map) {
      social = json["social"] == null ? null : Social2.fromJson(json["social"]);
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
    if (links != null) {
      _data["links"] = links?.toJson();
    }
    if (profileImage != null) {
      _data["profile_image"] = profileImage?.toJson();
    }
    _data["instagram_username"] = instagramUsername;
    _data["total_collections"] = totalCollections;
    _data["total_likes"] = totalLikes;
    _data["total_photos"] = totalPhotos;
    _data["accepted_tos"] = acceptedTos;
    _data["for_hire"] = forHire;
    if (social != null) {
      _data["social"] = social?.toJson();
    }
    return _data;
  }
}

class Social2 {
  String? instagramUsername;
  String? portfolioUrl;
  String? twitterUsername;
  dynamic paypalEmail;

  Social2(
      {this.instagramUsername,
      this.portfolioUrl,
      this.twitterUsername,
      this.paypalEmail});

  Social2.fromJson(Map<String, dynamic> json) {
    if (json["instagram_username"] is String) {
      instagramUsername = json["instagram_username"];
    }
    if (json["portfolio_url"] is String) {
      portfolioUrl = json["portfolio_url"];
    }
    if (json["twitter_username"] is String) {
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

class ProfileImage2 {
  String? small;
  String? medium;
  String? large;

  ProfileImage2({this.small, this.medium, this.large});

  ProfileImage2.fromJson(Map<String, dynamic> json) {
    if (json["small"] is String) {
      small = json["small"];
    }
    if (json["medium"] is String) {
      medium = json["medium"];
    }
    if (json["large"] is String) {
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

class Links5 {
  String? self;
  String? html;
  String? photos;
  String? likes;
  String? portfolio;
  String? following;
  String? followers;

  Links5(
      {this.self,
      this.html,
      this.photos,
      this.likes,
      this.portfolio,
      this.following,
      this.followers});

  Links5.fromJson(Map<String, dynamic> json) {
    if (json["self"] is String) {
      self = json["self"];
    }
    if (json["html"] is String) {
      html = json["html"];
    }
    if (json["photos"] is String) {
      photos = json["photos"];
    }
    if (json["likes"] is String) {
      likes = json["likes"];
    }
    if (json["portfolio"] is String) {
      portfolio = json["portfolio"];
    }
    if (json["following"] is String) {
      following = json["following"];
    }
    if (json["followers"] is String) {
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

class Links4 {
  String? self;
  String? html;
  String? photos;
  String? related;

  Links4({this.self, this.html, this.photos, this.related});

  Links4.fromJson(Map<String, dynamic> json) {
    if (json["self"] is String) {
      self = json["self"];
    }
    if (json["html"] is String) {
      html = json["html"];
    }
    if (json["photos"] is String) {
      photos = json["photos"];
    }
    if (json["related"] is String) {
      related = json["related"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["self"] = self;
    _data["html"] = html;
    _data["photos"] = photos;
    _data["related"] = related;
    return _data;
  }
}

class Tags1 {
  String? type;
  String? title;
  Source? source;

  Tags1({this.type, this.title, this.source});

  Tags1.fromJson(Map<String, dynamic> json) {
    if (json["type"] is String) {
      type = json["type"];
    }
    if (json["title"] is String) {
      title = json["title"];
    }
    if (json["source"] is Map) {
      source = json["source"] == null ? null : Source.fromJson(json["source"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["type"] = type;
    _data["title"] = title;
    if (source != null) {
      _data["source"] = source?.toJson();
    }
    return _data;
  }
}

class Source {
  Ancestry? ancestry;
  String? title;
  String? subtitle;
  String? description;
  String? metaTitle;
  String? metaDescription;
  CoverPhoto? coverPhoto;

  Source(
      {this.ancestry,
      this.title,
      this.subtitle,
      this.description,
      this.metaTitle,
      this.metaDescription,
      this.coverPhoto});

  Source.fromJson(Map<String, dynamic> json) {
    if (json["ancestry"] is Map) {
      ancestry =
          json["ancestry"] == null ? null : Ancestry.fromJson(json["ancestry"]);
    }
    if (json["title"] is String) {
      title = json["title"];
    }
    if (json["subtitle"] is String) {
      subtitle = json["subtitle"];
    }
    if (json["description"] is String) {
      description = json["description"];
    }
    if (json["meta_title"] is String) {
      metaTitle = json["meta_title"];
    }
    if (json["meta_description"] is String) {
      metaDescription = json["meta_description"];
    }
    if (json["cover_photo"] is Map) {
      coverPhoto = json["cover_photo"] == null
          ? null
          : CoverPhoto.fromJson(json["cover_photo"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (ancestry != null) {
      _data["ancestry"] = ancestry?.toJson();
    }
    _data["title"] = title;
    _data["subtitle"] = subtitle;
    _data["description"] = description;
    _data["meta_title"] = metaTitle;
    _data["meta_description"] = metaDescription;
    if (coverPhoto != null) {
      _data["cover_photo"] = coverPhoto?.toJson();
    }
    return _data;
  }
}

class CoverPhoto {
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
  Urls1? urls;
  Links2? links;
  int? likes;
  bool? likedByUser;
  List<dynamic>? currentUserCollections;
  dynamic sponsorship;
  TopicSubmissions1? topicSubmissions;
  User1? user;

  CoverPhoto(
      {this.id,
      this.slug,
      this.createdAt,
      this.updatedAt,
      this.promotedAt,
      this.width,
      this.height,
      this.color,
      this.blurHash,
      this.description,
      this.altDescription,
      this.breadcrumbs,
      this.urls,
      this.links,
      this.likes,
      this.likedByUser,
      this.currentUserCollections,
      this.sponsorship,
      this.topicSubmissions,
      this.user});

  CoverPhoto.fromJson(Map<String, dynamic> json) {
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["slug"] is String) {
      slug = json["slug"];
    }
    if (json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if (json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
    if (json["promoted_at"] is String) {
      promotedAt = json["promoted_at"];
    }
    if (json["width"] is int) {
      width = json["width"];
    }
    if (json["height"] is int) {
      height = json["height"];
    }
    if (json["color"] is String) {
      color = json["color"];
    }
    if (json["blur_hash"] is String) {
      blurHash = json["blur_hash"];
    }
    description = json["description"];
    if (json["alt_description"] is String) {
      altDescription = json["alt_description"];
    }
    if (json["breadcrumbs"] is List) {
      breadcrumbs = json["breadcrumbs"] ?? [];
    }
    if (json["urls"] is Map) {
      urls = json["urls"] == null ? null : Urls1.fromJson(json["urls"]);
    }
    if (json["links"] is Map) {
      links = json["links"] == null ? null : Links2.fromJson(json["links"]);
    }
    if (json["likes"] is int) {
      likes = json["likes"];
    }
    if (json["liked_by_user"] is bool) {
      likedByUser = json["liked_by_user"];
    }
    if (json["current_user_collections"] is List) {
      currentUserCollections = json["current_user_collections"] ?? [];
    }
    sponsorship = json["sponsorship"];
    if (json["topic_submissions"] is Map) {
      topicSubmissions = json["topic_submissions"] == null
          ? null
          : TopicSubmissions1.fromJson(json["topic_submissions"]);
    }
    if (json["user"] is Map) {
      user = json["user"] == null ? null : User1.fromJson(json["user"]);
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
    if (breadcrumbs != null) {
      _data["breadcrumbs"] = breadcrumbs;
    }
    if (urls != null) {
      _data["urls"] = urls?.toJson();
    }
    if (links != null) {
      _data["links"] = links?.toJson();
    }
    _data["likes"] = likes;
    _data["liked_by_user"] = likedByUser;
    if (currentUserCollections != null) {
      _data["current_user_collections"] = currentUserCollections;
    }
    _data["sponsorship"] = sponsorship;
    if (topicSubmissions != null) {
      _data["topic_submissions"] = topicSubmissions?.toJson();
    }
    if (user != null) {
      _data["user"] = user?.toJson();
    }
    return _data;
  }
}

class User1 {
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
  Links3? links;
  ProfileImage1? profileImage;
  String? instagramUsername;
  int? totalCollections;
  int? totalLikes;
  int? totalPhotos;
  bool? acceptedTos;
  bool? forHire;
  Social1? social;

  User1(
      {this.id,
      this.updatedAt,
      this.username,
      this.name,
      this.firstName,
      this.lastName,
      this.twitterUsername,
      this.portfolioUrl,
      this.bio,
      this.location,
      this.links,
      this.profileImage,
      this.instagramUsername,
      this.totalCollections,
      this.totalLikes,
      this.totalPhotos,
      this.acceptedTos,
      this.forHire,
      this.social});

  User1.fromJson(Map<String, dynamic> json) {
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
    if (json["username"] is String) {
      username = json["username"];
    }
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["first_name"] is String) {
      firstName = json["first_name"];
    }
    if (json["last_name"] is String) {
      lastName = json["last_name"];
    }
    if (json["twitter_username"] is String) {
      twitterUsername = json["twitter_username"];
    }
    if (json["portfolio_url"] is String) {
      portfolioUrl = json["portfolio_url"];
    }
    if (json["bio"] is String) {
      bio = json["bio"];
    }
    if (json["location"] is String) {
      location = json["location"];
    }
    if (json["links"] is Map) {
      links = json["links"] == null ? null : Links3.fromJson(json["links"]);
    }
    if (json["profile_image"] is Map) {
      profileImage = json["profile_image"] == null
          ? null
          : ProfileImage1.fromJson(json["profile_image"]);
    }
    if (json["instagram_username"] is String) {
      instagramUsername = json["instagram_username"];
    }
    if (json["total_collections"] is int) {
      totalCollections = json["total_collections"];
    }
    if (json["total_likes"] is int) {
      totalLikes = json["total_likes"];
    }
    if (json["total_photos"] is int) {
      totalPhotos = json["total_photos"];
    }
    if (json["accepted_tos"] is bool) {
      acceptedTos = json["accepted_tos"];
    }
    if (json["for_hire"] is bool) {
      forHire = json["for_hire"];
    }
    if (json["social"] is Map) {
      social = json["social"] == null ? null : Social1.fromJson(json["social"]);
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
    if (links != null) {
      _data["links"] = links?.toJson();
    }
    if (profileImage != null) {
      _data["profile_image"] = profileImage?.toJson();
    }
    _data["instagram_username"] = instagramUsername;
    _data["total_collections"] = totalCollections;
    _data["total_likes"] = totalLikes;
    _data["total_photos"] = totalPhotos;
    _data["accepted_tos"] = acceptedTos;
    _data["for_hire"] = forHire;
    if (social != null) {
      _data["social"] = social?.toJson();
    }
    return _data;
  }
}

class Social1 {
  String? instagramUsername;
  String? portfolioUrl;
  String? twitterUsername;
  dynamic paypalEmail;

  Social1(
      {this.instagramUsername,
      this.portfolioUrl,
      this.twitterUsername,
      this.paypalEmail});

  Social1.fromJson(Map<String, dynamic> json) {
    if (json["instagram_username"] is String) {
      instagramUsername = json["instagram_username"];
    }
    if (json["portfolio_url"] is String) {
      portfolioUrl = json["portfolio_url"];
    }
    if (json["twitter_username"] is String) {
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

class ProfileImage1 {
  String? small;
  String? medium;
  String? large;

  ProfileImage1({this.small, this.medium, this.large});

  ProfileImage1.fromJson(Map<String, dynamic> json) {
    if (json["small"] is String) {
      small = json["small"];
    }
    if (json["medium"] is String) {
      medium = json["medium"];
    }
    if (json["large"] is String) {
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

class Links3 {
  String? self;
  String? html;
  String? photos;
  String? likes;
  String? portfolio;
  String? following;
  String? followers;

  Links3(
      {this.self,
      this.html,
      this.photos,
      this.likes,
      this.portfolio,
      this.following,
      this.followers});

  Links3.fromJson(Map<String, dynamic> json) {
    if (json["self"] is String) {
      self = json["self"];
    }
    if (json["html"] is String) {
      html = json["html"];
    }
    if (json["photos"] is String) {
      photos = json["photos"];
    }
    if (json["likes"] is String) {
      likes = json["likes"];
    }
    if (json["portfolio"] is String) {
      portfolio = json["portfolio"];
    }
    if (json["following"] is String) {
      following = json["following"];
    }
    if (json["followers"] is String) {
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

class TopicSubmissions1 {
  Spirituality? spirituality;

  TopicSubmissions1({this.spirituality});

  TopicSubmissions1.fromJson(Map<String, dynamic> json) {
    if (json["spirituality"] is Map) {
      spirituality = json["spirituality"] == null
          ? null
          : Spirituality.fromJson(json["spirituality"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (spirituality != null) {
      _data["spirituality"] = spirituality?.toJson();
    }
    return _data;
  }
}

class Spirituality {
  String? status;
  String? approvedOn;

  Spirituality({this.status, this.approvedOn});

  Spirituality.fromJson(Map<String, dynamic> json) {
    if (json["status"] is String) {
      status = json["status"];
    }
    if (json["approved_on"] is String) {
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

class Links2 {
  String? self;
  String? html;
  String? download;
  String? downloadLocation;

  Links2({this.self, this.html, this.download, this.downloadLocation});

  Links2.fromJson(Map<String, dynamic> json) {
    if (json["self"] is String) {
      self = json["self"];
    }
    if (json["html"] is String) {
      html = json["html"];
    }
    if (json["download"] is String) {
      download = json["download"];
    }
    if (json["download_location"] is String) {
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

class Urls1 {
  String? raw;
  String? full;
  String? regular;
  String? small;
  String? thumb;
  String? smallS3;

  Urls1(
      {this.raw,
      this.full,
      this.regular,
      this.small,
      this.thumb,
      this.smallS3});

  Urls1.fromJson(Map<String, dynamic> json) {
    if (json["raw"] is String) {
      raw = json["raw"];
    }
    if (json["full"] is String) {
      full = json["full"];
    }
    if (json["regular"] is String) {
      regular = json["regular"];
    }
    if (json["small"] is String) {
      small = json["small"];
    }
    if (json["thumb"] is String) {
      thumb = json["thumb"];
    }
    if (json["small_s3"] is String) {
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

class Ancestry {
  Type? type;
  Category? category;
  Subcategory? subcategory;

  Ancestry({this.type, this.category, this.subcategory});

  Ancestry.fromJson(Map<String, dynamic> json) {
    if (json["type"] is Map) {
      type = json["type"] == null ? null : Type.fromJson(json["type"]);
    }
    if (json["category"] is Map) {
      category =
          json["category"] == null ? null : Category.fromJson(json["category"]);
    }
    if (json["subcategory"] is Map) {
      subcategory = json["subcategory"] == null
          ? null
          : Subcategory.fromJson(json["subcategory"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (type != null) {
      _data["type"] = type?.toJson();
    }
    if (category != null) {
      _data["category"] = category?.toJson();
    }
    if (subcategory != null) {
      _data["subcategory"] = subcategory?.toJson();
    }
    return _data;
  }
}

class Subcategory {
  String? slug;
  String? prettySlug;

  Subcategory({this.slug, this.prettySlug});

  Subcategory.fromJson(Map<String, dynamic> json) {
    if (json["slug"] is String) {
      slug = json["slug"];
    }
    if (json["pretty_slug"] is String) {
      prettySlug = json["pretty_slug"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["slug"] = slug;
    _data["pretty_slug"] = prettySlug;
    return _data;
  }
}

class Category {
  String? slug;
  String? prettySlug;

  Category({this.slug, this.prettySlug});

  Category.fromJson(Map<String, dynamic> json) {
    if (json["slug"] is String) {
      slug = json["slug"];
    }
    if (json["pretty_slug"] is String) {
      prettySlug = json["pretty_slug"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["slug"] = slug;
    _data["pretty_slug"] = prettySlug;
    return _data;
  }
}

class Type {
  String? slug;
  String? prettySlug;

  Type({this.slug, this.prettySlug});

  Type.fromJson(Map<String, dynamic> json) {
    if (json["slug"] is String) {
      slug = json["slug"];
    }
    if (json["pretty_slug"] is String) {
      prettySlug = json["pretty_slug"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["slug"] = slug;
    _data["pretty_slug"] = prettySlug;
    return _data;
  }
}

class Topics {
  String? id;
  String? title;
  String? slug;
  String? visibility;

  Topics({this.id, this.title, this.slug, this.visibility});

  Topics.fromJson(Map<String, dynamic> json) {
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["title"] is String) {
      title = json["title"];
    }
    if (json["slug"] is String) {
      slug = json["slug"];
    }
    if (json["visibility"] is String) {
      visibility = json["visibility"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["title"] = title;
    _data["slug"] = slug;
    _data["visibility"] = visibility;
    return _data;
  }
}

class TagsPreview {
  String? type;
  String? title;

  TagsPreview({this.type, this.title});

  TagsPreview.fromJson(Map<String, dynamic> json) {
    if (json["type"] is String) {
      type = json["type"];
    }
    if (json["title"] is String) {
      title = json["title"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["type"] = type;
    _data["title"] = title;
    return _data;
  }
}

class Tags {
  String? type;
  String? title;

  Tags({this.type, this.title});

  Tags.fromJson(Map<String, dynamic> json) {
    if (json["type"] is String) {
      type = json["type"];
    }
    if (json["title"] is String) {
      title = json["title"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["type"] = type;
    _data["title"] = title;
    return _data;
  }
}

class Meta {
  bool? index;

  Meta({this.index});

  Meta.fromJson(Map<String, dynamic> json) {
    if (json["index"] is bool) {
      index = json["index"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["index"] = index;
    return _data;
  }
}

class Location {
  String? name;
  String? city;
  String? country;
  Position? position;

  Location({this.name, this.city, this.country, this.position});

  Location.fromJson(Map<String, dynamic> json) {
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["city"] is String) {
      city = json["city"];
    }
    if (json["country"] is String) {
      country = json["country"];
    }
    if (json["position"] is Map) {
      position =
          json["position"] == null ? null : Position.fromJson(json["position"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["city"] = city;
    _data["country"] = country;
    if (position != null) {
      _data["position"] = position?.toJson();
    }
    return _data;
  }
}

class Position {
  double? latitude;
  double? longitude;

  Position({this.latitude, this.longitude});

  Position.fromJson(Map<String, dynamic> json) {
    if (json["latitude"] is double) {
      latitude = json["latitude"];
    }
    if (json["longitude"] is double) {
      longitude = json["longitude"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["latitude"] = latitude;
    _data["longitude"] = longitude;
    return _data;
  }
}

class Exif {
  String? make;
  String? model;
  String? name;
  String? exposureTime;
  String? aperture;
  String? focalLength;
  int? iso;

  Exif(
      {this.make,
      this.model,
      this.name,
      this.exposureTime,
      this.aperture,
      this.focalLength,
      this.iso});

  Exif.fromJson(Map<String, dynamic> json) {
    if (json["make"] is String) {
      make = json["make"];
    }
    if (json["model"] is String) {
      model = json["model"];
    }
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["exposure_time"] is String) {
      exposureTime = json["exposure_time"];
    }
    if (json["aperture"] is String) {
      aperture = json["aperture"];
    }
    if (json["focal_length"] is String) {
      focalLength = json["focal_length"];
    }
    if (json["iso"] is int) {
      iso = json["iso"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["make"] = make;
    _data["model"] = model;
    _data["name"] = name;
    _data["exposure_time"] = exposureTime;
    _data["aperture"] = aperture;
    _data["focal_length"] = focalLength;
    _data["iso"] = iso;
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

  User(
      {this.id,
      this.updatedAt,
      this.username,
      this.name,
      this.firstName,
      this.lastName,
      this.twitterUsername,
      this.portfolioUrl,
      this.bio,
      this.location,
      this.links,
      this.profileImage,
      this.instagramUsername,
      this.totalCollections,
      this.totalLikes,
      this.totalPhotos,
      this.acceptedTos,
      this.forHire,
      this.social});

  User.fromJson(Map<String, dynamic> json) {
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
    if (json["username"] is String) {
      username = json["username"];
    }
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["first_name"] is String) {
      firstName = json["first_name"];
    }
    if (json["last_name"] is String) {
      lastName = json["last_name"];
    }
    if (json["twitter_username"] is String) {
      twitterUsername = json["twitter_username"];
    }
    if (json["portfolio_url"] is String) {
      portfolioUrl = json["portfolio_url"];
    }
    if (json["bio"] is String) {
      bio = json["bio"];
    }
    if (json["location"] is String) {
      location = json["location"];
    }
    if (json["links"] is Map) {
      links = json["links"] == null ? null : Links1.fromJson(json["links"]);
    }
    if (json["profile_image"] is Map) {
      profileImage = json["profile_image"] == null
          ? null
          : ProfileImage.fromJson(json["profile_image"]);
    }
    if (json["instagram_username"] is String) {
      instagramUsername = json["instagram_username"];
    }
    if (json["total_collections"] is int) {
      totalCollections = json["total_collections"];
    }
    if (json["total_likes"] is int) {
      totalLikes = json["total_likes"];
    }
    if (json["total_photos"] is int) {
      totalPhotos = json["total_photos"];
    }
    if (json["accepted_tos"] is bool) {
      acceptedTos = json["accepted_tos"];
    }
    if (json["for_hire"] is bool) {
      forHire = json["for_hire"];
    }
    if (json["social"] is Map) {
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
    if (links != null) {
      _data["links"] = links?.toJson();
    }
    if (profileImage != null) {
      _data["profile_image"] = profileImage?.toJson();
    }
    _data["instagram_username"] = instagramUsername;
    _data["total_collections"] = totalCollections;
    _data["total_likes"] = totalLikes;
    _data["total_photos"] = totalPhotos;
    _data["accepted_tos"] = acceptedTos;
    _data["for_hire"] = forHire;
    if (social != null) {
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

  Social(
      {this.instagramUsername,
      this.portfolioUrl,
      this.twitterUsername,
      this.paypalEmail});

  Social.fromJson(Map<String, dynamic> json) {
    if (json["instagram_username"] is String) {
      instagramUsername = json["instagram_username"];
    }
    if (json["portfolio_url"] is String) {
      portfolioUrl = json["portfolio_url"];
    }
    if (json["twitter_username"] is String) {
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
    if (json["small"] is String) {
      small = json["small"];
    }
    if (json["medium"] is String) {
      medium = json["medium"];
    }
    if (json["large"] is String) {
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

  Links1(
      {this.self,
      this.html,
      this.photos,
      this.likes,
      this.portfolio,
      this.following,
      this.followers});

  Links1.fromJson(Map<String, dynamic> json) {
    if (json["self"] is String) {
      self = json["self"];
    }
    if (json["html"] is String) {
      html = json["html"];
    }
    if (json["photos"] is String) {
      photos = json["photos"];
    }
    if (json["likes"] is String) {
      likes = json["likes"];
    }
    if (json["portfolio"] is String) {
      portfolio = json["portfolio"];
    }
    if (json["following"] is String) {
      following = json["following"];
    }
    if (json["followers"] is String) {
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
  StreetPhotography? streetPhotography;

  TopicSubmissions({this.streetPhotography});

  TopicSubmissions.fromJson(Map<String, dynamic> json) {
    if (json["street-photography"] is Map) {
      streetPhotography = json["street-photography"] == null
          ? null
          : StreetPhotography.fromJson(json["street-photography"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (streetPhotography != null) {
      _data["street-photography"] = streetPhotography?.toJson();
    }
    return _data;
  }
}

class StreetPhotography {
  String? status;
  String? approvedOn;

  StreetPhotography({this.status, this.approvedOn});

  StreetPhotography.fromJson(Map<String, dynamic> json) {
    if (json["status"] is String) {
      status = json["status"];
    }
    if (json["approved_on"] is String) {
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
    if (json["self"] is String) {
      self = json["self"];
    }
    if (json["html"] is String) {
      html = json["html"];
    }
    if (json["download"] is String) {
      download = json["download"];
    }
    if (json["download_location"] is String) {
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

  Urls(
      {this.raw,
      this.full,
      this.regular,
      this.small,
      this.thumb,
      this.smallS3});

  Urls.fromJson(Map<String, dynamic> json) {
    if (json["raw"] is String) {
      raw = json["raw"];
    }
    if (json["full"] is String) {
      full = json["full"];
    }
    if (json["regular"] is String) {
      regular = json["regular"];
    }
    if (json["small"] is String) {
      small = json["small"];
    }
    if (json["thumb"] is String) {
      thumb = json["thumb"];
    }
    if (json["small_s3"] is String) {
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

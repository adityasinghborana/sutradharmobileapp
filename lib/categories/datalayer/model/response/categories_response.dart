import 'package:json_annotation/json_annotation.dart';
part 'categories_response.g.dart';

@JsonSerializable()
class CategoriesResponse {
  final int? id;
  final String? name;
  final String? slug;
  final int? parent;
  final String? description;
  final String? display;
  final Image? image;
  final int? menuOrder;
  final int? count;
  //final Links? Links;

  const CategoriesResponse({
    this.id,
    this.name,
    this.slug,
    this.parent,
    this.description,
    this.display,
    this.image,
    this.menuOrder,
    this.count,
    //this.Links,
  });

  factory CategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CategoriesResponseToJson(this);
}

@JsonSerializable()
class Image {
  final int? id;
  final String? dateCreated;
  final String? dateCreatedGmt;
  final String? dateModified;
  final String? dateModifiedGmt;
  final String? src;
  final String? name;
  final String? alt;

  const Image({
    this.id,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.src,
    this.name,
    this.alt,
  });

  factory Image.fromJson(Map<String, dynamic> json) =>
      _$ImageFromJson(json);

  Map<String, dynamic> toJson() => _$ImageToJson(this);
}

@JsonSerializable()
class Links {
  final List<Self>? self;
  final List<Collection>? collection;
  final List<Up>? up;

  const Links({
    this.self,
    this.collection,
    this.up,
  });

  factory Links.fromJson(Map<String, dynamic> json) =>
      _$LinksFromJson(json);

  Map<String, dynamic> toJson() => _$LinksToJson(this);
}

@JsonSerializable()
class Self {
  final String? href;
  final TargetHints? targetHints;

  const Self({
    this.href,
    this.targetHints,
  });

  factory Self.fromJson(Map<String, dynamic> json) =>
      _$SelfFromJson(json);

  Map<String, dynamic> toJson() => _$SelfToJson(this);
}

@JsonSerializable()
class TargetHints {
  final List<String>? allow;

  const TargetHints({
    this.allow,
  });

  factory TargetHints.fromJson(Map<String, dynamic> json) =>
      _$TargetHintsFromJson(json);

  Map<String, dynamic> toJson() => _$TargetHintsToJson(this);
}

@JsonSerializable()
class Collection {
  final String? href;

  const Collection({
    this.href,
  });

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);

  Map<String, dynamic> toJson() => _$CollectionToJson(this);
}

@JsonSerializable()
class Up {
  final String? href;

  const Up({
    this.href,
  });

  factory Up.fromJson(Map<String, dynamic> json) =>
      _$UpFromJson(json);

  Map<String, dynamic> toJson() => _$UpToJson(this);
}

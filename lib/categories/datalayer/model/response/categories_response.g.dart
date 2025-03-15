// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesResponse _$CategoriesResponseFromJson(Map<String, dynamic> json) =>
    CategoriesResponse(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      parent: (json['parent'] as num?)?.toInt(),
      description: json['description'] as String?,
      display: json['display'] as String?,
      image: json['image'] == null
          ? null
          : Image.fromJson(json['image'] as Map<String, dynamic>),
      menuOrder: (json['menuOrder'] as num?)?.toInt(),
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CategoriesResponseToJson(CategoriesResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'parent': instance.parent,
      'description': instance.description,
      'display': instance.display,
      'image': instance.image,
      'menuOrder': instance.menuOrder,
      'count': instance.count,
    };

Image _$ImageFromJson(Map<String, dynamic> json) => Image(
      id: (json['id'] as num?)?.toInt(),
      dateCreated: json['dateCreated'] as String?,
      dateCreatedGmt: json['dateCreatedGmt'] as String?,
      dateModified: json['dateModified'] as String?,
      dateModifiedGmt: json['dateModifiedGmt'] as String?,
      src: json['src'] as String?,
      name: json['name'] as String?,
      alt: json['alt'] as String?,
    );

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
      'id': instance.id,
      'dateCreated': instance.dateCreated,
      'dateCreatedGmt': instance.dateCreatedGmt,
      'dateModified': instance.dateModified,
      'dateModifiedGmt': instance.dateModifiedGmt,
      'src': instance.src,
      'name': instance.name,
      'alt': instance.alt,
    };

Links _$LinksFromJson(Map<String, dynamic> json) => Links(
      self: (json['self'] as List<dynamic>?)
          ?.map((e) => Self.fromJson(e as Map<String, dynamic>))
          .toList(),
      collection: (json['collection'] as List<dynamic>?)
          ?.map((e) => Collection.fromJson(e as Map<String, dynamic>))
          .toList(),
      up: (json['up'] as List<dynamic>?)
          ?.map((e) => Up.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'self': instance.self,
      'collection': instance.collection,
      'up': instance.up,
    };

Self _$SelfFromJson(Map<String, dynamic> json) => Self(
      href: json['href'] as String?,
      targetHints: json['targetHints'] == null
          ? null
          : TargetHints.fromJson(json['targetHints'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SelfToJson(Self instance) => <String, dynamic>{
      'href': instance.href,
      'targetHints': instance.targetHints,
    };

TargetHints _$TargetHintsFromJson(Map<String, dynamic> json) => TargetHints(
      allow:
          (json['allow'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$TargetHintsToJson(TargetHints instance) =>
    <String, dynamic>{
      'allow': instance.allow,
    };

Collection _$CollectionFromJson(Map<String, dynamic> json) => Collection(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$CollectionToJson(Collection instance) =>
    <String, dynamic>{
      'href': instance.href,
    };

Up _$UpFromJson(Map<String, dynamic> json) => Up(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$UpToJson(Up instance) => <String, dynamic>{
      'href': instance.href,
    };

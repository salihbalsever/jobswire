// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Items _$ItemsFromJson(Map<String, dynamic> json) {
  return Items(
    slug: json['slug'] as String?,
    id: json['id'] as String?,
    epoch: json['epoch'] as String?,
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    company: json['company'] as String?,
    companyLogo: json['company_logo'] as String?,
    position: json['position'] as String?,
    tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    logo: json['logo'] as String?,
    description: json['description'] as String?,
    location: json['location'] as String?,
    original: json['original'] as bool?,
    url: json['url'] as String?,
    applyUrl: json['apply_url'] as String?,
  );
}

Map<String, dynamic> _$ItemsToJson(Items instance) => <String, dynamic>{
      'slug': instance.slug,
      'id': instance.id,
      'epoch': instance.epoch,
      'date': instance.date?.toIso8601String(),
      'company': instance.company,
      'company_logo': instance.companyLogo,
      'position': instance.position,
      'tags': instance.tags,
      'logo': instance.logo,
      'description': instance.description,
      'location': instance.location,
      'original': instance.original,
      'url': instance.url,
      'apply_url': instance.applyUrl,
    };

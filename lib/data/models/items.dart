import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'items.g.dart';

@JsonSerializable()
class Items extends Equatable {
  const Items({
    this.slug,
    this.id,
    this.epoch,
    this.date,
    this.company,
    this.companyLogo,
    this.position,
    this.tags,
    this.logo,
    this.description,
    this.location,
    this.original,
    this.url,
    this.applyUrl,
  });

  final String? slug;
  final String? id;
  final String? epoch;
  final DateTime? date;
  final String? company;
  @JsonKey(name: 'company_logo')
  final String? companyLogo;
  final String? position;
  final List<String>? tags;
  final String? logo;
  final String? description;
  final String? location;
  final bool? original;
  final String? url;
  @JsonKey(name: 'apply_url')
  final String? applyUrl;

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
  Map<String, dynamic> toJson() => _$ItemsToJson(this);

  @override
  List<Object?> get props => [
        slug,
        id,
        epoch,
        date,
        company,
        companyLogo,
        position,
        tags,
        logo,
        description,
        location,
        original,
        url,
        applyUrl,
      ];
      
  @override
  bool? get stringify => true;
}

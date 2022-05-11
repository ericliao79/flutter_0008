import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  User(this.name, this.assetsName);

  String name;

  @JsonKey(name: 'assets_name')
  String assetsName;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
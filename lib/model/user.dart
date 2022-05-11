import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  User(this.id, this.name, this.assetsName);

  @JsonKey(name: 'id', fromJson: _stringToInt, toJson: _stringFromInt)
  int? id;

  String name;

  @JsonKey(name: 'assets_name')
  String assetsName;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  static int? _stringToInt(String? id) => int.tryParse(id ?? "");

  static String _stringFromInt(int? id) => id.toString();
}

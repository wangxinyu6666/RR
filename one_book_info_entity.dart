import 'dart:convert';
import 'package:myflutter01/generated/json/base/json_field.dart';
import 'package:myflutter01/generated/json/one_book_info_entity.g.dart';

@JsonSerializable()
class OneBookInfoEntity {

	late String name;
	late String subname;
	late String rating;
	late String rateNum;
	late String description;
	late String publishInfo;
	late String detailURL;
	late String imageURL;
  
  OneBookInfoEntity();

  factory OneBookInfoEntity.fromJson(Map<String, dynamic> json) => $OneBookInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $OneBookInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
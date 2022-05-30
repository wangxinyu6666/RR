import 'dart:convert';
import 'package:myflutter01/generated/json/base/json_field.dart';
import 'package:myflutter01/generated/json/one_book_infor_entity.g.dart';

@JsonSerializable()
class OneBookInforEntity {

	String? name;
	String? subname;
	String? rating;
	String? rateNumbers;
	String? description;
	String? publishInfor;
	String? detailURL;
	String? imageURL;
  
  OneBookInforEntity();

  factory OneBookInforEntity.fromJson(Map<String, dynamic> json) => $OneBookInforEntityFromJson(json);

  Map<String, dynamic> toJson() => $OneBookInforEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
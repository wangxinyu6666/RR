import 'package:myflutter01/generated/json/base/json_convert_content.dart';
import 'package:myflutter01/douban/model/one_book_infor_entity.dart';

OneBookInforEntity $OneBookInforEntityFromJson(Map<String, dynamic> json) {
	final OneBookInforEntity oneBookInforEntity = OneBookInforEntity();
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		oneBookInforEntity.name = name;
	}
	final String? subname = jsonConvert.convert<String>(json['subname']);
	if (subname != null) {
		oneBookInforEntity.subname = subname;
	}
	final String? rating = jsonConvert.convert<String>(json['rating']);
	if (rating != null) {
		oneBookInforEntity.rating = rating;
	}
	final String? rateNumbers = jsonConvert.convert<String>(json['rateNumbers']);
	if (rateNumbers != null) {
		oneBookInforEntity.rateNumbers = rateNumbers;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		oneBookInforEntity.description = description;
	}
	final String? publishInfor = jsonConvert.convert<String>(json['publishInfor']);
	if (publishInfor != null) {
		oneBookInforEntity.publishInfor = publishInfor;
	}
	final String? detailURL = jsonConvert.convert<String>(json['detailURL']);
	if (detailURL != null) {
		oneBookInforEntity.detailURL = detailURL;
	}
	final String? imageURL = jsonConvert.convert<String>(json['imageURL']);
	if (imageURL != null) {
		oneBookInforEntity.imageURL = imageURL;
	}
	return oneBookInforEntity;
}

Map<String, dynamic> $OneBookInforEntityToJson(OneBookInforEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['name'] = entity.name;
	data['subname'] = entity.subname;
	data['rating'] = entity.rating;
	data['rateNumbers'] = entity.rateNumbers;
	data['description'] = entity.description;
	data['publishInfor'] = entity.publishInfor;
	data['detailURL'] = entity.detailURL;
	data['imageURL'] = entity.imageURL;
	return data;
}
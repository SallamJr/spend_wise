// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expenses_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExpensesResponseModel _$ExpensesResponseModelFromJson(
        Map<String, dynamic> json) =>
    ExpensesResponseModel(
      data: json['data'] == null
          ? null
          : ExpensesModel.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ExpensesResponseModelToJson(
        ExpensesResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

ExpensesModel _$ExpensesModelFromJson(Map<String, dynamic> json) =>
    ExpensesModel(
      name: json['name'] as String?,
      description: json['description'] as String?,
      image: json['image'] == null
          ? null
          : Image.fromJson(json['image'] as Map<String, dynamic>),
      value: (json['value'] as num?)?.toInt(),
      isExpenses: json['isExpenses'] as bool?,
      category: json['category'] as String?,
      user: json['user'] as String?,
      id: json['_id'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ExpensesModelToJson(ExpensesModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'value': instance.value,
      'isExpenses': instance.isExpenses,
      'category': instance.category,
      'user': instance.user,
      '_id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

Image _$ImageFromJson(Map<String, dynamic> json) => Image(
      url: json['url'] as String?,
      publicId: json['publicId'],
    );

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
      'url': instance.url,
      'publicId': instance.publicId,
    };

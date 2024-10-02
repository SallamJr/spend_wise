// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeResponseModel _$HomeResponseModelFromJson(Map<String, dynamic> json) =>
    HomeResponseModel(
      data: json['data'] == null
          ? null
          : HomeModel.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
    );

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => HomeModel(
      id: json['_id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      profilePhoto: json['profilePhoto'] == null
          ? null
          : ProfilePhoto.fromJson(json['profilePhoto'] as Map<String, dynamic>),
      bio: json['bio'] as String,
      isAdmin: json['isAdmin'] as bool,
      isAccountVerified: json['isAccountVerified'] as bool,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

ProfilePhoto _$ProfilePhotoFromJson(Map<String, dynamic> json) => ProfilePhoto(
      url: json['url'] as String,
      publicId: json['publicId'],
    );

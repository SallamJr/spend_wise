// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) =>
    LoginResponseModel(
      data: LoginModel.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
    );

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) => LoginModel(
      id: json['_id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      profilePhoto: json['profilePhoto'] == null
          ? null
          : ProfilePhoto.fromJson(json['profilePhoto'] as Map<String, dynamic>),
      bio: json['bio'] as String? ?? '',
      isAdmin: json['isAdmin'] as bool,
      isAccountVerified: json['isAccountVerified'] as bool,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      token: json['token'] as String,
    );

ProfilePhoto _$ProfilePhotoFromJson(Map<String, dynamic> json) => ProfilePhoto(
      url: json['url'] as String,
      publicId: json['publicId'] as String?,
    );

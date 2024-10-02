import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_model.g.dart';

@JsonSerializable(createToJson: false)
class LoginResponseModel extends Equatable {
  const LoginResponseModel({
    required this.data,
    required this.message,
  });

  final LoginModel data;
  final String message;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);

  @override
  List<Object?> get props => [
        data,
        message,
      ];
}

@JsonSerializable(createToJson: false)
class LoginModel extends Equatable {
  const LoginModel({
    required this.id,
    required this.name,
    required this.email,
    this.profilePhoto,
    this.bio = '',
    required this.isAdmin,
    required this.isAccountVerified,
    this.createdAt,
    this.updatedAt,
    required this.token,
  });

  @JsonKey(name: '_id')
  final String id;
  final String name;
  final String email;
  final ProfilePhoto? profilePhoto;
  final String bio;
  final bool isAdmin;
  final bool isAccountVerified;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String token;

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);

  @override
  List<Object?> get props => [
        id,
        name,
        email,
        profilePhoto,
        bio,
        isAdmin,
        isAccountVerified,
        createdAt,
        updatedAt,
        token,
      ];
}

@JsonSerializable(createToJson: false)
class ProfilePhoto extends Equatable {
  const ProfilePhoto({
    required this.url,
    this.publicId,
  });

  final String url;
  final String? publicId;

  factory ProfilePhoto.fromJson(Map<String, dynamic> json) =>
      _$ProfilePhotoFromJson(json);

  @override
  List<Object?> get props => [
        url,
        publicId,
      ];
}
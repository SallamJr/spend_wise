import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'signup_model.g.dart';

@JsonSerializable(createToJson: false)
class SignupResponseModel extends Equatable {
  const SignupResponseModel({
    required this.data,
    required this.message,
  });

  final SignupModel? data;
  final String message;

  factory SignupResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseModelFromJson(json);

  @override
  List<Object?> get props => [
        data,
        message,
      ];
}

@JsonSerializable(createToJson: false)
class SignupModel extends Equatable {
  const SignupModel({
    required this.id,
    required this.name,
    required this.email,
    required this.profilePhoto,
    required this.bio,
    required this.isAdmin,
    required this.isAccountVerified,
    required this.createdAt,
    required this.updatedAt,
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

  factory SignupModel.fromJson(Map<String, dynamic> json) =>
      _$SignupModelFromJson(json);

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
      ];
}

@JsonSerializable(createToJson: false)
class ProfilePhoto extends Equatable {
  const ProfilePhoto({
    required this.url,
    required this.publicId,
  });

  final String url;
  final dynamic publicId;

  factory ProfilePhoto.fromJson(Map<String, dynamic> json) =>
      _$ProfilePhotoFromJson(json);

  @override
  List<Object?> get props => [
        url,
        publicId,
      ];
}
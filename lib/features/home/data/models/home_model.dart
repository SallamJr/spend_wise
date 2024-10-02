import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'home_model.g.dart';

@JsonSerializable(createToJson: false)
class HomeResponseModel extends Equatable {
  const HomeResponseModel({
    required this.data,
    required this.message,
  });

  final HomeModel? data;
  final String message;

  factory HomeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseModelFromJson(json);

  @override
  List<Object?> get props => [
        data,
        message,
      ];
}

@JsonSerializable(createToJson: false)
class HomeModel extends Equatable {
  const HomeModel({
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

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);

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
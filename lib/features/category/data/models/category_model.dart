import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category_model.g.dart';

@JsonSerializable()
class CategoryResponseModel extends Equatable {
    const CategoryResponseModel({
        required this.data,
        required this.message,
    });

    final CategoryModel? data;
    final String? message;

    CategoryResponseModel copyWith({
        CategoryModel? data,
        String? message,
    }) {
        return CategoryResponseModel(
            data: data ?? this.data,
            message: message ?? this.message,
        );
    }

    factory CategoryResponseModel.fromJson(Map<String, dynamic> json) => _$CategoryResponseModelFromJson(json);

    Map<String, dynamic> toJson() => _$CategoryResponseModelToJson(this);

    @override
    String toString(){
        return "$data, $message, ";
    }

    @override
    List<Object?> get props => [
    data, message, ];
}

@JsonSerializable()
class CategoryModel extends Equatable {
    const CategoryModel({
        required this.name,
        required this.image,
        required this.user,
        required this.id,
        required this.createdAt,
        required this.updatedAt,
        required this.dataId,
    });

    final String? name;
    final Image? image;
    final String? user;

    @JsonKey(name: '_id') 
    final String? id;
    final DateTime? createdAt;
    final DateTime? updatedAt;
    final String? dataId;

    CategoryModel copyWith({
        String? name,
        Image? image,
        String? user,
        String? id,
        DateTime? createdAt,
        DateTime? updatedAt,
        String? dataId,
    }) {
        return CategoryModel(
            name: name ?? this.name,
            image: image ?? this.image,
            user: user ?? this.user,
            id: id ?? this.id,
            createdAt: createdAt ?? this.createdAt,
            updatedAt: updatedAt ?? this.updatedAt,
            dataId: dataId ?? this.dataId,
        );
    }

    factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);

    Map<String, dynamic> toJson() => _$CategoryModelToJson(this);

    @override
    String toString(){
        return "$name, $image, $user, $id, $createdAt, $updatedAt, $dataId, ";
    }

    @override
    List<Object?> get props => [
    name, image, user, id, createdAt, updatedAt, dataId, ];
}

@JsonSerializable()
class Image extends Equatable {
    const Image({
        required this.url,
        required this.publicId,
    });

    final String? url;
    final dynamic publicId;

    Image copyWith({
        String? url,
        dynamic publicId,
    }) {
        return Image(
            url: url ?? this.url,
            publicId: publicId ?? this.publicId,
        );
    }

    factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

    Map<String, dynamic> toJson() => _$ImageToJson(this);

    @override
    String toString(){
        return "$url, $publicId, ";
    }

    @override
    List<Object?> get props => [
    url, publicId, ];
}

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'expenses_model.g.dart';

@JsonSerializable()
class ExpensesResponseModel extends Equatable {
    const ExpensesResponseModel({
        required this.data,
        required this.message,
    });

    final ExpensesModel? data;
    final String? message;

    ExpensesResponseModel copyWith({
        ExpensesModel? data,
        String? message,
    }) {
        return ExpensesResponseModel(
            data: data ?? this.data,
            message: message ?? this.message,
        );
    }

    factory ExpensesResponseModel.fromJson(Map<String, dynamic> json) => _$ExpensesResponseModelFromJson(json);

    Map<String, dynamic> toJson() => _$ExpensesResponseModelToJson(this);

    @override
    String toString(){
        return "$data, $message, ";
    }

    @override
    List<Object?> get props => [
    data, message, ];
}

@JsonSerializable()
class ExpensesModel extends Equatable {
    const ExpensesModel({
        required this.name,
        required this.description,
        required this.image,
        required this.value,
        required this.isExpenses,
        required this.category,
        required this.user,
        required this.id,
        required this.createdAt,
        required this.updatedAt,
    });

    final String? name;
    final String? description;
    final Image? image;
    final int? value;
    final bool? isExpenses;
    final String? category;
    final String? user;

    @JsonKey(name: '_id') 
    final String? id;
    final DateTime? createdAt;
    final DateTime? updatedAt;

    ExpensesModel copyWith({
        String? name,
        String? description,
        Image? image,
        int? value,
        bool? isExpenses,
        String? category,
        String? user,
        String? id,
        DateTime? createdAt,
        DateTime? updatedAt,
    }) {
        return ExpensesModel(
            name: name ?? this.name,
            description: description ?? this.description,
            image: image ?? this.image,
            value: value ?? this.value,
            isExpenses: isExpenses ?? this.isExpenses,
            category: category ?? this.category,
            user: user ?? this.user,
            id: id ?? this.id,
            createdAt: createdAt ?? this.createdAt,
            updatedAt: updatedAt ?? this.updatedAt,
        );
    }

    factory ExpensesModel.fromJson(Map<String, dynamic> json) => _$ExpensesModelFromJson(json);

    Map<String, dynamic> toJson() => _$ExpensesModelToJson(this);

    @override
    String toString(){
        return "$name, $description, $image, $value, $isExpenses, $category, $user, $id, $createdAt, $updatedAt, ";
    }

    @override
    List<Object?> get props => [
    name, description, image, value, isExpenses, category, user, id, createdAt, updatedAt, ];
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

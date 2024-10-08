part of 'category_cubit.dart';

class CategoryState extends Equatable {
  const CategoryState({
    required this.message,
    required this.status,
    this.data,
  });
  final String message;
  final GenericStatus status;
  final CategoryResponseModel? data;

  factory CategoryState.initial() {
    return const CategoryState(
      message: '',
      status: GenericStatus.initial,
      data: null,
    );
  }

  CategoryState copyWith({
    String? message,
    GenericStatus? status,
    CategoryResponseModel? data,
  }) {
    return CategoryState(
      message: message ?? this.message,
      status: status ?? this.status,
      data: data ?? this.data,
    );
  }

  @override
  List<Object?> get props => [message, status, data];
}

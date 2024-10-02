part of 'signup_cubit.dart';
/// It was sealed class
class SignupState extends Equatable {
  const SignupState({
    required this.message,
    required this.status,
    this.data,
  });

  final String message;
  final GenericStatus status;
  final SignupModel? data;

  factory SignupState.initial() {
    return const SignupState(
      message: '',
      status: GenericStatus.initial,
      data: null,
    );
  }

  SignupState copyWith({
    String? message,
    GenericStatus? status,
    SignupModel? data,
  }) {
    return SignupState(
      message: message ?? this.message,
      status: status ?? this.status,
      data: data ?? this.data,
    );
  }

  @override
  List<Object?> get props => [
        message,
        status,
        data,
      ];
}
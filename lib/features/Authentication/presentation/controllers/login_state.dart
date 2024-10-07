part of 'login_cubit.dart';

class LoginState extends Equatable {
  const LoginState({
    required this.message,
    required this.status,
    this.data,
  });

  final String message;
  final GenericStatus status;
  final LoginModel? data;

  factory LoginState.initial() {
    return const LoginState(
      message: '',
      status: GenericStatus.initial,
      data: null,
    );
  }

  LoginState copyWith({
    String? message,
    GenericStatus? status,
    LoginModel? data,
  }) {
    return LoginState(
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

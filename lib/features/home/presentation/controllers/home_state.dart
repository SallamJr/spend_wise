part of 'home_cubit.dart';

class HomeState extends Equatable {
  final GenericStatus state;
  final String errorMessage;
  final List data;

  const HomeState({
    this.state = GenericStatus.initial,
    this.errorMessage = '',
    this.data = const [],
  });

  // add copy with
  HomeState copyWith({
    GenericStatus? state,
    String? errorMessage,
    List? data,
  }) {
    return HomeState(
      state: state ?? this.state,
      errorMessage: errorMessage ?? this.errorMessage,
      data: data ?? this.data,
    );
  }

  @override
  List<Object> get props => [
        state,
        errorMessage,
        data,
      ];
}

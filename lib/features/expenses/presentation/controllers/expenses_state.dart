part of 'expenses_cubit.dart';

class ExpensesState extends Equatable {
  final ExpensesModel? expenses;
  final GenericStatus status;
  final String? message;
  const ExpensesState(
      {this.expenses, this.status = GenericStatus.initial, this.message});
        factory ExpensesState.initial() {
    return const ExpensesState(
      message: '',
      status: GenericStatus.initial,
    );
  }

  ExpensesState copyWith({
    ExpensesModel? expenses,
    required GenericStatus status,
    required String message,
  }) {
    return ExpensesState(
      expenses: expenses ?? this.expenses,
      message: message,
    );
  }

  @override
  List<Object?> get props => [expenses, status, message];
}
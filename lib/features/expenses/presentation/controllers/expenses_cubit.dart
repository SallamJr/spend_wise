import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:spend_wise/core/api/api_consumer.dart';
import 'package:spend_wise/core/api/end_points.dart';
import 'package:spend_wise/core/error/exceptiopns.dart';
import 'package:spend_wise/core/helpers/cache_helper.dart';
import 'package:spend_wise/core/helpers/enums.dart';
import 'package:spend_wise/features/expenses/data/models/expenses_model.dart';
import 'package:spend_wise/features/expenses/data/repositories/expenses_repository.dart';

part 'expenses_state.dart';

class ExpensesCubit extends Cubit<ExpensesState> {
  final ExpensesRepository expensesRepository;
  final BaseApiConsumer api;
  ExpensesModel? expenses;
  ExpensesCubit({required this.expensesRepository,required this.api}) : super(ExpensesState.initial());
  final List<ExpensesModel> expensesList = [];
  Future<void> addExpense(String name, String description, int value,
      bool isExpense, String category) async {
    final newExpense = ExpensesModel(
      name: name,
      description: description,
      image: null, // Update if you want to handle images
      value: value,
      isExpenses: isExpense,
      category: category,
      user: 'userId', // Replace with actual user
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    try {
      emit(
        state.copyWith(
          status: GenericStatus.loading,
          message: '',
        ),
      );
      final expensesResponse = await api.get(EndPoints.expensesUrl);

      expensesResponse.fold(
        (error) {
          // Handle the error case
          emit(state.copyWith(status: GenericStatus.error, message: error));
        },
        (response) {
          // Handle the success case
          expensesList.add(newExpense);
          List<ExpensesModel> expensesModelList = (response.data as List)
              .map((item) => ExpensesModel.fromJson(item))
              .toList();

          // If you need to process each expense model
          for (var expensesModel in expensesModelList) {
              final decodedToken = JwtDecoder.decode(expensesModel.category as String);
          // Ensure the decoded token contains the expected key and is not null
          final userAuthId = decodedToken[ApiKeys.userAuthId] as String?;
          if (userAuthId != null) {
            CacheHelper().saveData(
              key: ApiKeys.userAuthId,
              value: userAuthId,
            );
          }
        }
            // //! save id using sharedpreferences
          
          emit(state.copyWith(
            status: GenericStatus.success,
            message: '',
          ));
        },
      );
    } on ServerException {
      emit(state.copyWith(status: GenericStatus.error, message: 'error'));
    }
  }
}

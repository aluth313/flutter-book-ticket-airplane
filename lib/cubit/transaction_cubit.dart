import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_airplane/models/transaction_model.dart';
import 'package:flutter_airplane/services/transaction_service.dart';

part 'transaction_state.dart';

class TransactionCubit extends Cubit<TransactionState> {
  TransactionCubit() : super(TransactionInitial());

  void createTransaction(TransactionModel transaction) async {
    try {
      emit(TransactionLoading());
      await TransactionService().createTransaction(transaction);
      emit(TransactionSuccess());
    } catch (e) {
      emit(TransactionFailed(e.toString()));
    }
  }
}

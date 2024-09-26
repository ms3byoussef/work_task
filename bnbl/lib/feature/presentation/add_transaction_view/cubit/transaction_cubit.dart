// ignore_for_file: avoid_print

import 'package:bnbl/feature/presentation/add_transaction_view/cubit/transaction_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class TransactionCubit extends Cubit<TransactionState> {
  // final LoginUseCase _loginUseCase;

  TransactionCubit(
      // this._loginUseCase,
      )
      : super(const TransactionState.initial());

  // changeEmail(String? email) {
  //   this.email = email;
  //   emit(LoginState.emailChanged(email));
  // }

  // changePassword(String? password) {
  //   this.password = password;
  //   emit(LoginState.emailChanged(password));
  // }

  // bool get isLoginValid => email != null && password != null;

  // login() async {
  //   emit(const LoginState.loginLoading());
  //   final response = await _loginUseCase(email: email!, password: password!);

  //   response.fold(
  //     (error) {
  //       emit(LoginState.loginError(error));
  //     },
  //     (response) {
  //       emit(const LoginState.loginSuccessfully());
  //     },
  //   );
}
// }

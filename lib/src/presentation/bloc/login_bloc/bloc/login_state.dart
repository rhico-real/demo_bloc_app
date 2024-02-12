part of 'login_bloc.dart';

sealed class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {
  const LoginInitial();
}

class LoadingLoginState extends LoginState {
  const LoadingLoginState();
}

class SuccessLoginState extends LoginState {
  final String? result;
  final List<Cats> listCats;
  const SuccessLoginState(this.result, this.listCats);
}

class ErrorLoginState extends LoginState {
  const ErrorLoginState();
}

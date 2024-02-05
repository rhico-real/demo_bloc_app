part of 'login_bloc.dart';

sealed class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class ProdLoginEvent extends LoginEvent {
  final String? email;
  final String? password;
  const ProdLoginEvent(this.email, this.password);
}

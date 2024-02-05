import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginInitial()) {
    on<LoginEvent>((event, emit) {
      if (event is ProdLoginEvent) {
        emit(LoadingLoginState());
        emit(SuccessLoginState("Error logged in!"));
      }
    });
  }
}

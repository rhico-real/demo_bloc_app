import 'package:bloc/bloc.dart';
import 'package:demo/network/api_models/cats_model.dart';
import 'package:demo/network/api_service/cats_api_service.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginInitial()) {
    on<LoginEvent>((event, emit) async {
      if (event is ProdLoginEvent) {
        emit(const LoadingLoginState());
        List<Cats> listcats = await CatsApiService().fetchCats();
        emit(SuccessLoginState("Error logged in!", listcats));
      }
    });
  }
}

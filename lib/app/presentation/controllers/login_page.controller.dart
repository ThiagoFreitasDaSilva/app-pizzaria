import 'dart:async';
import 'package:projeto_pizza/app/presentation/states/login_page.states.dart';

class LoginPageController {
  final StreamController<String> _loginStreamController =
      StreamController<String>.broadcast();
  Sink<String> get loginStreamSink => _loginStreamController.sink;
  Stream<LoginPageState> get loginStreamOutput =>
      _loginStreamController.stream<LoginPageState>.switchMap(_loginUser);

  LoginPageState state = InitLoginPageState();

  Stream<LoginPageState> _loginUser(String name) async* {
    state = LoadingLoginPageState();
    yield state;
    try {
      state = SuccessLoginPageState("OK");
      yield state;
    } catch (e) {
      state = ErrorLoginPageState("Erro Ocorreu: $e");
      yield state;
    }
  }
}

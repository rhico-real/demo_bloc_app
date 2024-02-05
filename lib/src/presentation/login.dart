import 'package:demo/src/presentation/bloc/login_bloc/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController result = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: username,
              decoration: InputDecoration(label: Text("Username")),
            ),
            TextField(
              controller: password,
              decoration: InputDecoration(label: Text("Password")),
            ),
            ElevatedButton(
                onPressed: () {
                  BlocProvider.of<LoginBloc>(context).add(ProdLoginEvent(username.text, password.text));
                },
                child: Text("Login")),
            SizedBox(
              height: 100,
            ),
            BlocListener<LoginBloc, LoginState>(
              listener: (context, state) {
                if (state is SuccessLoginState) {
                  result.text = state.result ?? "None";
                }
              },
              child: TextField(
                controller: result,
                decoration: InputDecoration(label: Text("Result")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

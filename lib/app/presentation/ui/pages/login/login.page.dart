import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey();

  Widget getFormFields() {
    return Column(children: [
      TextFormField(
        decoration: const InputDecoration(
            labelText: 'Username', border: OutlineInputBorder()),
      ),
      const SizedBox(
        height: 20,
      ),
      TextFormField(
        obscureText: true,
        decoration: const InputDecoration(
            labelText: 'Password', border: OutlineInputBorder()),
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(height: 100),
                getFormFields(),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {});
                      },
                      child: const Text('ENTRAR')),
                ),
                const SizedBox(height: 100)
              ],
            )),
      ),
    );
  }
}

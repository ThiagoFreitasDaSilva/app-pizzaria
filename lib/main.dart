import 'package:flutter/material.dart';
import 'package:projeto_pizza/app/presentation/ui/pages/home/home.page.dart';
import 'package:projeto_pizza/app/presentation/ui/pages/login/login.page.dart';
import 'package:projeto_pizza/core/packages/getit/get_it.package.dart';

main() {
  GetItPackage.init();
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.from(
            colorScheme: ColorScheme.fromSwatch(
                primarySwatch: Colors.purple, backgroundColor: Colors.white)),
        home: Scaffold(
          appBar: AppBar(),
          body: const LoginPage(),
        ));
  }
}

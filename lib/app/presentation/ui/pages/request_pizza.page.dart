import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:projeto_pizza/app/presentation/controllers/pizza.controller.dart';

class RequestPizzaPage extends StatefulWidget {
  const RequestPizzaPage({Key? key}) : super(key: key);

  @override
  State<RequestPizzaPage> createState() => _RequestPizzaPageState();
}

class _RequestPizzaPageState extends State<RequestPizzaPage> {
  PizzaController pizzaController = GetIt.I.get<PizzaController>();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

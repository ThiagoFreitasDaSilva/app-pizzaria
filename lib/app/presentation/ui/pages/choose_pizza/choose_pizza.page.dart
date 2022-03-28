import 'package:flutter/material.dart';
import 'package:projeto_pizza/app/presentation/ui/pages/choose_pizza/components/add_new_pizza_form.component.dart';

class ChoosePizzaPage extends StatefulWidget {
  const ChoosePizzaPage({Key? key}) : super(key: key);

  @override
  State<ChoosePizzaPage> createState() => _ChoosePizzaPage();
}

class _ChoosePizzaPage extends State<ChoosePizzaPage> {
  bool clickAddNewRequest = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(30),
        child: Column(children: [
          SizedBox(
              height: 40,
              child: ElevatedButton(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [Icon(Icons.add), Text("ADICIONAR")]),
                  onPressed: () {
                    setState(() {
                      clickAddNewRequest = true;
                    });
                  }))
        ]));
  }
}

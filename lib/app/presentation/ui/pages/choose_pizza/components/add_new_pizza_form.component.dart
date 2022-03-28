import 'package:flutter/material.dart';

class AddNewPizzaFormComponent extends StatefulWidget {
  const AddNewPizzaFormComponent({Key? key}) : super(key: key);

  @override
  State<AddNewPizzaFormComponent> createState() =>
      _AddNewPizzaFormComponentState();
}

class _AddNewPizzaFormComponentState extends State<AddNewPizzaFormComponent> {
  List<DropdownMenuItem> selectPizzaFlavorsValues = <DropdownMenuItem>[
    const DropdownMenuItem(value: -1, child: Text("")),
    const DropdownMenuItem(value: 0, child: Text("sabor0")),
    const DropdownMenuItem(value: 1, child: Text("sabor1")),
    const DropdownMenuItem(value: 2, child: Text("sabor2")),
    const DropdownMenuItem(value: 3, child: Text("sabor3")),
    const DropdownMenuItem(value: 4, child: Text("sabor4")),
  ];

  int selectedFlavorValue = -1;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Expanded(
            child: DropdownButton<dynamic>(
                isExpanded: true,
                value: selectedFlavorValue,
                items: selectPizzaFlavorsValues,
                onChanged: (value) {
                  setState(() {
                    selectedFlavorValue = value;
                  });
                })),
      ],
    ));
  }
}

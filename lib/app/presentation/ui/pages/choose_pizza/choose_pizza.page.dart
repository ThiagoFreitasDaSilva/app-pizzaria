import 'package:flutter/material.dart';

class ChoosePizzaPage extends StatefulWidget {
  const ChoosePizzaPage({Key? key}) : super(key: key);

  @override
  State<ChoosePizzaPage> createState() => _ChoosePizzaPage();
}

class _ChoosePizzaPage extends State<ChoosePizzaPage> {
  List dropdownsList = [];

  @override
  Widget build(BuildContext context) {
    double arrayDropdownHeight = dropdownsList.length.toDouble() * 50;
    const double addBTNHeight = 40.0;
    return Padding(
        padding: const EdgeInsets.all(30),
        child: Column(children: [
          SizedBox(
              height: arrayDropdownHeight,
              child: ListView.builder(
                  itemCount: dropdownsList.length,
                  itemBuilder: (context, index) {
                    return dropdownsList[index];
                  })),
          SizedBox(
              height: addBTNHeight,
              child: ElevatedButton(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Icons.add),
                        Text("ADD MORE PIZZA")
                      ]),
                  onPressed: () {
                    setState(() {
                      dropdownsList.add(getNewDropdownWidget());
                    });
                  }))
        ]));
  }

  DropdownButton getNewDropdownWidget() {
    List<DropdownMenuItem> selectPizzaFlavorsValuesList = <DropdownMenuItem>[
      const DropdownMenuItem(value: -1, child: Text(""), enabled: false),
      const DropdownMenuItem(value: 0, child: Text("sabor0")),
      const DropdownMenuItem(value: 1, child: Text("sabor1")),
      const DropdownMenuItem(value: 2, child: Text("sabor2")),
      const DropdownMenuItem(value: 3, child: Text("sabor3")),
      const DropdownMenuItem(value: 4, child: Text("sabor4")),
    ];
    int? selectedFlavorListValue = -1;
    return DropdownButton<dynamic>(
        isExpanded: true,
        hint: const Text("Select a flavor"),
        value: selectedFlavorListValue,
        items: selectPizzaFlavorsValuesList,
        onChanged: (value) {
          setState(() {
            selectedFlavorListValue = value;
          });
        });
  }
}

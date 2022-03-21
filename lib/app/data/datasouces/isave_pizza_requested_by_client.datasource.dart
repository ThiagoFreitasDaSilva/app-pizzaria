import 'package:projeto_pizza/app/data/dto/pizza.dto.dart';

abstract class ISavePizzaRequestedByClientDataSource {
  Future<bool> call(PizzaDTO pizzaToBeSaved);
}

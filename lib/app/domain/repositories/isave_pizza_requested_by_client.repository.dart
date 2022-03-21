import 'package:projeto_pizza/app/data/dto/pizza.dto.dart';

abstract class ISavePizzaRequestedByClientRepository {
  Future<bool> call(PizzaDTO pizza);
}

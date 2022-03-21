import 'package:projeto_pizza/app/domain/entities/pizza.entity.dart';

abstract class ISavePizzaRequestedByClientUseCase {
  Future<bool> call(PizzaEntity pizza);
}

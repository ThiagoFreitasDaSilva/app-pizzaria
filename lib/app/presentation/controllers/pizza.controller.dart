import 'package:projeto_pizza/app/data/dto/pizza.dto.dart';
import 'package:projeto_pizza/app/domain/entities/pizza.entity.dart';
import 'package:projeto_pizza/app/domain/usecases/save_pizza_requested_by_client/isave_pizza_requested_by_client.usecase.dart';

class PizzaController {
  ISavePizzaRequestedByClientUseCase savePizzaUseCase;

  PizzaController({required this.savePizzaUseCase});

  Future<bool> saveRequestedPizza(PizzaEntity requestedPizza) async {
    return await savePizzaUseCase(requestedPizza as PizzaDTO);
  }
}

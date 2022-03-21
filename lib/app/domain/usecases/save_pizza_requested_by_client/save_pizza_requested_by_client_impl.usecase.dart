import 'package:projeto_pizza/app/data/dto/pizza.dto.dart';
import 'package:projeto_pizza/app/domain/entities/pizza.entity.dart';
import 'package:projeto_pizza/app/domain/repositories/isave_pizza_requested_by_client.repository.dart';
import 'package:projeto_pizza/app/domain/usecases/save_pizza_requested_by_client/isave_pizza_requested_by_client.usecase.dart';

class SavePizzaRequestedByClientImplUseCase
    implements ISavePizzaRequestedByClientUseCase {
  ISavePizzaRequestedByClientRepository savePizzaRepository;

  SavePizzaRequestedByClientImplUseCase(this.savePizzaRepository);

  @override
  Future<bool> call(PizzaEntity pizza) async {
    PizzaDTO pizzaDTO =
        PizzaDTO(ingredientsDB: pizza.ingredients, sizeDB: pizza.size);
    return await savePizzaRepository(pizzaDTO);
  }
}

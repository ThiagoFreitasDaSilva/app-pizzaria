import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:projeto_pizza/app/domain/entities/ingredient.entity.dart';
import 'package:projeto_pizza/app/domain/entities/pizza.entity.dart';
import 'package:projeto_pizza/app/domain/enums/pizza_size.enum.dart';
import 'package:projeto_pizza/app/domain/repositories/isave_pizza_requested_by_client.repository.dart';
import 'package:projeto_pizza/app/domain/usecases/save_pizza_requested_by_client/save_pizza_requested_by_client_impl.usecase.dart';

class SavePizzaRepositoryMock
    implements ISavePizzaRequestedByClientRepository, Mock {
  @override
  Future<bool> call(PizzaEntity pizza) {
    return Future(() {
      return true;
    });
  }
}

void main() {
  SavePizzaRequestedByClientImplUseCase savePizzaRequest =
      SavePizzaRequestedByClientImplUseCase(SavePizzaRepositoryMock());
  test('should save a pizza', () async {
    List<IngredientEntity> ingredients = <IngredientEntity>[
      IngredientEntity('queijo'),
      IngredientEntity('presunto')
    ];
    bool savePizzaResult =
        await savePizzaRequest(PizzaEntity(ingredients, PIZZA_SIZE_ENUM.big));
    expect(savePizzaResult, true);
  });
}

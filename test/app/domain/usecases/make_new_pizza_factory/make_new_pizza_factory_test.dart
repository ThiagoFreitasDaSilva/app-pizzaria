import 'package:flutter_test/flutter_test.dart';
import 'package:projeto_pizza/app/domain/entities/ingredient.entity.dart';
import 'package:projeto_pizza/app/domain/entities/pizza.entity.dart';
import 'package:projeto_pizza/app/domain/enums/pizza_size.enum.dart';
import 'package:projeto_pizza/app/domain/usecases/make_new_pizza_factory/make_new_pizza_factory_impl.usecase.dart';

void main() {
  MakeNewPizzaFactoryImplUseCase makePizza = MakeNewPizzaFactoryImplUseCase();

  test('should return a pizza entity', () {
    List<IngredientEntity> ingredients = <IngredientEntity>[
      IngredientEntity('queijo'),
      IngredientEntity('presunto')
    ];
    expect(makePizza(ingredients, PIZZA_SIZE_ENUM.big), isA<PizzaEntity>());
  });
}

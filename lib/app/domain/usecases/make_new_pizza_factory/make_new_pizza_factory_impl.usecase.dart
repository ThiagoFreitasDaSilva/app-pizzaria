import 'package:projeto_pizza/app/domain/entities/ingredient.entity.dart';
import 'package:projeto_pizza/app/domain/entities/pizza.entity.dart';
import 'package:projeto_pizza/app/domain/enums/pizza_size.enum.dart';
import 'package:projeto_pizza/app/domain/usecases/make_new_pizza_factory/imake_new_pizza_factory.usecase.dart';

class MakeNewPizzaFactoryImplUseCase implements IMakeNewPizzaFactoryUseCase {
  @override
  PizzaEntity call(List<IngredientEntity> ingredients, PIZZA_SIZE_ENUM size) {
    return PizzaEntity(ingredients, size);
  }
}

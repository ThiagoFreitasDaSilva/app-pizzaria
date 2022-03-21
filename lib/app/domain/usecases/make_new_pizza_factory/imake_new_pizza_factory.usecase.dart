import 'package:projeto_pizza/app/domain/entities/ingredient.entity.dart';
import 'package:projeto_pizza/app/domain/entities/pizza.entity.dart';
import 'package:projeto_pizza/app/domain/enums/pizza_size.enum.dart';

abstract class IMakeNewPizzaFactoryUseCase {
  PizzaEntity call(List<IngredientEntity> ingredients, PIZZA_SIZE_ENUM size);
}

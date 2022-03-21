import 'package:projeto_pizza/app/domain/entities/ingredient.entity.dart';
import 'package:projeto_pizza/app/domain/enums/pizza_size.enum.dart';

class PizzaEntity {
  List<IngredientEntity> ingredients;
  PIZZA_SIZE_ENUM size;

  PizzaEntity(this.ingredients, this.size);
}

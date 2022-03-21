import 'package:projeto_pizza/app/domain/entities/ingredient.entity.dart';
import 'package:projeto_pizza/app/domain/entities/pizza.entity.dart';
import 'package:projeto_pizza/app/domain/enums/pizza_size.enum.dart';

class PizzaDTO extends PizzaEntity {
  List<IngredientEntity> ingredientsDB;
  PIZZA_SIZE_ENUM sizeDB;

  PizzaDTO({required this.ingredientsDB, required this.sizeDB})
      : super(ingredientsDB, sizeDB);

  Map<String, dynamic> toJSON(PizzaDTO pizzaDTO) {
    return {'ingredientsDB': pizzaDTO.ingredients, 'sizeDB': pizzaDTO.size};
  }

  PizzaDTO fromJSON(Map<String, dynamic> pizzaJSON) {
    return PizzaDTO(
        ingredientsDB: pizzaJSON['ingredients'], sizeDB: pizzaJSON['size']);
  }
}

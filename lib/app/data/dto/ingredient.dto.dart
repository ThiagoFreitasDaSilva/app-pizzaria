import 'package:projeto_pizza/app/domain/entities/ingredient.entity.dart';

class IngredientDTO extends IngredientEntity {
  IngredientDTO({required name}) : super(name);

  Map<String, dynamic> toJSON() => {'name': super.name};

  factory IngredientDTO.fromJSON(Map<String, dynamic> jsonIngredient) {
    return IngredientDTO(name: jsonIngredient['name']);
  }
}

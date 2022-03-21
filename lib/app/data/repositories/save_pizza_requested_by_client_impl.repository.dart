import 'package:projeto_pizza/app/data/datasouces/isave_pizza_requested_by_client.datasource.dart';
import 'package:projeto_pizza/app/data/dto/pizza.dto.dart';
import 'package:projeto_pizza/app/domain/repositories/isave_pizza_requested_by_client.repository.dart';

class SavePizzaRequestedByClientImplRepository
    implements ISavePizzaRequestedByClientRepository {
  ISavePizzaRequestedByClientDataSource savePizzaDataSource;

  SavePizzaRequestedByClientImplRepository({required this.savePizzaDataSource});

  @override
  Future<bool> call(PizzaDTO pizza) {
    return savePizzaDataSource(pizza);
  }
}

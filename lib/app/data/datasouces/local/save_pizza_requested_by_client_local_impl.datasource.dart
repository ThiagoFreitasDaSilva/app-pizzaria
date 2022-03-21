import 'package:projeto_pizza/app/data/datasouces/isave_pizza_requested_by_client.datasource.dart';
import 'package:projeto_pizza/app/data/dto/pizza.dto.dart';
import 'package:projeto_pizza/app/data/errors/error.dart';

class SavePizzaRequestedByClientLocalImplDataSource
    implements ISavePizzaRequestedByClientDataSource {
  @override
  Future<bool> call(PizzaDTO pizzaToBeSaved) {
    try {
      //NECESSÁRIO IMPLEMENTAR//
      return Future((() {
        return true;
      }));
    } on OnSaveError {
      throw OnSaveError('Erro ao salvar ...');
    } catch (e) {
      throw Exception(e);
    }
  }
}

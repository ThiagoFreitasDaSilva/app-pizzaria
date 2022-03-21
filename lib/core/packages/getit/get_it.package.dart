import 'package:get_it/get_it.dart';
import 'package:projeto_pizza/app/data/datasouces/local/save_pizza_requested_by_client_local_impl.datasource.dart';
import 'package:projeto_pizza/app/data/repositories/save_pizza_requested_by_client_impl.repository.dart';
import 'package:projeto_pizza/app/domain/usecases/save_pizza_requested_by_client/save_pizza_requested_by_client_impl.usecase.dart';
import 'package:projeto_pizza/app/presentation/controllers/pizza.controller.dart';

class GetItPackage {
  static GetIt getIt = GetIt.instance;

  static void init() {
    //datasources
    getIt.registerLazySingleton(
        () => SavePizzaRequestedByClientLocalImplDataSource());

    //repositories
    getIt.registerLazySingleton(() =>
        SavePizzaRequestedByClientImplRepository(savePizzaDataSource: getIt()));

    //usecases
    getIt.registerLazySingleton(
        () => SavePizzaRequestedByClientImplUseCase(getIt()));

    //controllers
    getIt.registerFactory(() => PizzaController(savePizzaUseCase: getIt()));
  }

  static void dispose() {
    //datasources
    getIt.unregister(
        instanceName: 'SavePizzaRequestedByClientLocalImplDataSource');

    //repositories
    getIt.unregister(instanceName: 'SavePizzaRequestedByClientImplRepository');

    //usecases
    getIt.unregister(instanceName: 'SavePizzaRequestedByClientImplUseCase');

    //controllers
    getIt.unregister(instanceName: 'PizzaController');
  }
}

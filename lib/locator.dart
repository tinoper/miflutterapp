import 'package:get_it/get_it.dart';
import 'package:miflutterapp/routes/app_router.dart';

final locator = GetIt.instance;

void registerDependencies() {
  locator.registerLazySingleton(() => AppRouter());
}

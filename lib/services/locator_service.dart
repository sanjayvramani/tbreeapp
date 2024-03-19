
import 'package:get_it/get_it.dart';
import 'package:tbreeapp/services/navigator_service.dart';

GetIt locator = GetIt.instance;

void setupLocator()
{
  locator.registerLazySingleton<NavigatorService>(() => NavigatorService());
}
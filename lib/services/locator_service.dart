
import 'package:get_it/get_it.dart';
import 'package:tbreeapp/features/support_page/mobx/support_page_mobx.dart';
import 'package:tbreeapp/services/navigator_service.dart';

GetIt locator = GetIt.instance;

void setupLocator()
{
  locator.registerLazySingleton<NavigatorService>(() => NavigatorService());
  locator.registerLazySingleton<SupportPageMobx>(() => SupportPageMobx());
  
}
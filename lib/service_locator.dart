import 'package:home/Notifications.dart';
import 'package:home/UserService.dart';
import 'package:home/LoginService.dart';
import 'setupLocator.dart';

void setupLocator() {
  locator.registerSingleton(UserService());
  locator.registerFactory<LoginService>(() => LoginService());

  locator.registerLazySingleton(() => PushNotificationService());}

  class StartUpViewModel extends BaseModel {
    final PushNotificationService _pushNotificationService =
        locator<PushNotificationService>();
    Future handleStartUpLogic() async {
      await _pushNotificationService.initialise();
    }
    }
  
  class BaseModel {
}
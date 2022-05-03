import 'package:firebasedemo/controllers/controllers.dart';
import 'package:get/instance_manager.dart';

class InitialBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<AppController>(
      AppController(),
      permanent: true,
    );
  }
}
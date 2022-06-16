import 'package:get/get.dart';

import '../controllers/ibuhamil_controller.dart';

class IbuhamilBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IbuhamilController>(
      () => IbuhamilController(),
    );
  }
}

import 'package:get/get.dart';

import '../controllers/bayibalita_controller.dart';

class BayibalitaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BayibalitaController>(
      () => BayibalitaController(),
    );
  }
}

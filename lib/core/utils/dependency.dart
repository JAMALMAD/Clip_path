import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import '../../feuture/auth/controller/controller.dart';
class DependencyInjectoin extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> AuthController());
  }

}
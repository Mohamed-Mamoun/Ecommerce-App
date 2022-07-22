import 'package:ecommerce_app/core/view_model/auth_view_model.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/route_manager.dart';

class Binding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AuthViewModel());
  }

}
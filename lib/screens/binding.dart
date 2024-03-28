
import 'package:get/get.dart';
import 'package:login_signup/screens/auth_controller.dart';
import 'package:login_signup/view_modell/control_view.dart';
import 'package:login_signup/view_modell/home_model.dart';
import 'package:login_signup/view_modell/home_view_model.dart';

class Binding extends Bindings {
  @override
  void dependencies() {

Get.lazyPut(() => home_view_model());

  
  }
}

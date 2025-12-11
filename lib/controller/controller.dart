import 'package:get/get.dart';
import 'package:new_getx_version/model/user.dart';

class Appcontroller extends GetxController {
  var user = User('dani'.obs, 12.obs);

  void change() {
    user.user.value = 'haj dani';
    user.age.value = 12;
  }
}

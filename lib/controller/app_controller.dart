
import 'package:get/get.dart';

class AppController extends GetxController{


  var checkBoxValue = true.obs;

  var constantRecord = <String>[
    "منی ریفریجریٹر", "ریفریجریٹر", "فریزر", "واشنگ مشین", "واشنگ مشین ڈرائر کے ساتھ",
    "اے سی", "واٹر ڈسپنسر", "ایل سی  ڈی ٹی وی", "پنکھا", "مائیکرو ویو", "چولہا",
  ];

  var constIconList = <String>[
    'assets/images/1.png', 'assets/images/2.png',
    'assets/images/3.png', 'assets/images/4.png'
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

  }



}
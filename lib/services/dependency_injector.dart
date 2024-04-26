import 'package:get/get.dart';
import 'package:olxclone/services/product_firestore.dart';

mixin Dependency {
  static void init() {
    Get.lazyPut(() => ProductService(), fenix: true);
  }
}
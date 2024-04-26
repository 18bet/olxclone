import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';


class BaseFireStoreService extends GetxService {
  final fireStoreInstance = FirebaseFirestore.instance;
  final className = "runtimeType";



  @override
  void onInit() {
    super.onInit();
  }


  void handleFirebaseException(Object e) {
    if (kDebugMode) {
      if (e is FirebaseException) {
        Get.snackbar('$className Firebase Error', "${e.message}");

        print("$className ${e.message}");
      } else if (e is Exception) {
        Get.snackbar('Exception Error', "$e");
        print("$className $e");
      } else {
        Get.snackbar('Firebase Error', "$e");
      }
    }
  }
}
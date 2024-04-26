import 'package:get/get.dart';
import 'package:olxclone/models/product_model.dart';
import 'package:olxclone/services/product_firestore.dart';
import 'package:olxclone/utils/base_controller.dart';

class HomeController extends BaseController {
  final location = "India".obs;
  List productList = <Product>[].obs;
  final _productService = Get.find<ProductService>();

  @override
  onInit() {
    super.onInit();
    getAllProduct();
  }

  getAllProduct() async {
    isLoading.value = true;
    final data = await _productService.getInitialProduct();
    if (data.isNotEmpty) {
      productList.addAll(data);
    }
    isLoading.value = false;
  }

}

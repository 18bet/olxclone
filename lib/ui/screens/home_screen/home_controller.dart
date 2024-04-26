import 'package:get/get.dart';
import 'package:olxclone/models/product_model.dart';
import 'package:olxclone/utils/base_controller.dart';

class HomeController extends BaseController {
  final location = "India".obs;
  List productList = <Product>[].obs;

  @override
  onInit() {
    super.onInit();
    loadDemoData();
  }

  List<Product> generateDemoProducts() {
    List<Product> products = [];
    for (int i = 0; i < 10; i++) {
      products.add(Product(
        id: 'product_$i',
        imageUrl:
            'https://cdn.vox-cdn.com/thumbor/KA23i52Q1953XDw1_87hpmii6Jc=/0x0:2040x1360/768x768/filters:focal(1020x680:1021x681)/cdn.vox-cdn.com/uploads/chorus_asset/file/24931305/236791_Apple_iPhone_15_and_15_Plus_review_DSeifert_0008.jpg',
        name: 'Product $i',
        price: 19.99 + i, // Demo price, change as needed
      ));
    }
    return products;
  }

  // Call this method to populate your data
  void loadDemoData() {
    List<Product> demoProducts = generateDemoProducts();
    productList.assignAll(demoProducts);
  }
}

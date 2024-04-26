import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:olxclone/models/product_model.dart';
import 'package:olxclone/services/base_service.dart';

class ProductService extends BaseFireStoreService {
  Future<List<Product>> getInitialProduct() async {
    try {
      final querySnapshot =
          await fireStoreInstance.collection('product').get();
      if (querySnapshot.docs.isEmpty) return [];

      final product = querySnapshot.docs
          .map(
            (queryDocument) =>
                Product.fromJson(queryDocument.data(), queryDocument.id),
          )
          .toList();

      return product;
    } on FirebaseException catch (e) {
      handleFirebaseException(e);
      e.printError();
      return [];
    } catch (e) {
      handleFirebaseException(e);
      e.printError();
      return [];
    }
  }
}

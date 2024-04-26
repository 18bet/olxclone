import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olxclone/ui/screens/home_screen/home_controller.dart';
import 'package:olxclone/ui/widgets/product_card.dart';
import 'package:olxclone/ui/widgets/search_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                const Icon(Icons.location_on),
                TextButton(
                  onPressed: () {
                    print('Location button pressed');
                  },
                  child: Text(
                    controller.location.value,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
          title: const Text(
            "Olx",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SearchWidget(
                suggestions: const [
                  'sagar',
                  'new',
                  'project',
                  'basstube',
                  'car',
                  'bike'
                ],
                onSearch: (String searchedText) {
                  print(searchedText);
                },
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.7,
                ),
                itemCount: controller.productList.length,

                itemBuilder: (context, index) {
               final data = controller.productList[index];
                  return ProductCard(
                   product: data,
                  );
                },
              ),
            ),
          ],
        ),
      );
    });
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olxclone/ui/screens/home_screen/home_controller.dart';
import 'package:olxclone/ui/widgets/product_card.dart';
import 'package:olxclone/ui/widgets/search_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) =>
      GetBuilder<HomeController>(builder: (controller) {
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
                padding: const EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
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
              const ProductCard(
                imageUrl: 'https://cdn.vox-cdn.com/thumbor/KA23i52Q1953XDw1_87hpmii6Jc=/0x0:2040x1360/768x768/filters:focal(1020x680:1021x681)/cdn.vox-cdn.com/uploads/chorus_asset/file/24931305/236791_Apple_iPhone_15_and_15_Plus_review_DSeifert_0008.jpg',
                name: 'Product Name',
                price: 19.99,
              )

            ],
          ),
        );
      });
}

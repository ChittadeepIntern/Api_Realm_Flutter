import 'package:api_realm/controllers/data_controller.dart';
import 'package:api_realm/screens/album_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Category'),
      ),
      body: GetBuilder<DataController>(
        init: DataController(),
        builder: (controller) {
          // Ensure data is not null before rendering
          if (controller.data == null) {
            return const Center(child: CircularProgressIndicator());
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Get.to(() => AlbumScreen(
                        albums: controller.data.l1ImamAliAs,
                      ));
                },
                child: const ListTile(
                  title: Text('1 Imam Ali(as)'), // Provide fallback for null titles
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => AlbumScreen(
                        albums: controller.data.sahifaSajjadia,
                      ));
                },
                child: const ListTile(
                  title: Text('Sahifa Sajjadia'), // Provide fallback for null titles
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

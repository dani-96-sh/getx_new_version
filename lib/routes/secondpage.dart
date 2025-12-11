import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        // title: Text(Get.arguments['ar'].toString()),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: Text('back'),
          ),
        ],
      ),
    );
  }
}

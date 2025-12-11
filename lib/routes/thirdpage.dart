import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Thirdpage extends StatelessWidget {
  const Thirdpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/secoudPage');
              },
              child: Text('data'),
            ),
          ],
        ),
      ),
    );
  }
}

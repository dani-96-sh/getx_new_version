import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_getx_version/app/data/Global/global_function.dart';
import 'package:new_getx_version/controller/controller.dart';
import 'package:new_getx_version/routes/secondpage.dart';
import 'package:new_getx_version/routes/thirdpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var controller = Get.put(Appcontroller());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/secoudPage', page: () => Secondpage()),
        GetPage(name: '/thirdPage', page: () => Thirdpage()),
      ],
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.deepPurple,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      GlobalFunction().getSnackbar();
                    },
                    child: Text(
                      'Snack Bar',
                      style: TextStyle(fontFamily: 'GB', fontSize: 18),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      GlobalFunction().getDialog();
                    },
                    child: Text(
                      'GetDialog',
                      style: TextStyle(fontFamily: 'GB', fontSize: 18),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      GlobalFunction().getbottomsheet();
                    },
                    child: Text(
                      'Get Bottomsheet',
                      style: TextStyle(fontFamily: 'GB', fontSize: 18),
                    ),
                  ),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Get.off(page)
                        // Get.offAll(page)
                        // Get.toNamed('/thirdPage');
                      },
                      child: Text('Go to secoundPage'),
                    ),
                  ),

                  Obx(() {
                    return Column(
                      children: [
                        Text(controller.user.user.toString()),

                        ElevatedButton(
                          onPressed: () {
                            controller.change();
                          },
                          child: Text('data'),
                        ),
                      ],
                    );
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

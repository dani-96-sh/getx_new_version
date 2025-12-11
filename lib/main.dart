import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {
              Get.snackbar(
                '',
                '',
                titleText: Text(
                  'درست شد',
                  textAlign: TextAlign.end,
                  style: TextStyle(fontFamily: 'Dana', fontSize: 18),
                ),
                messageText: Text(
                  'کار میکند',
                  textAlign: TextAlign.end,

                  style: TextStyle(fontFamily: 'Dana', fontSize: 18),
                ),
                icon: Icon(Icons.alarm, size: 45),
                shouldIconPulse: true,
                reverseAnimationCurve: Curves.bounceIn,
                borderRadius: 8,
                dismissDirection: DismissDirection.horizontal,
                backgroundColor: Colors.amber,
                snackPosition: SnackPosition.TOP,
              );
            },
            child: Text('data'),
          ),
        ),
      ),
    );
  }
}

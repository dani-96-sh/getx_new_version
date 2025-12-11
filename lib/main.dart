import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_getx_version/app/data/Global/global_function.dart';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
        ),
      ),
    );
  }
}

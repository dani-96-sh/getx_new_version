import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GlobalFunction {
  SnackbarController getSnackbar() {
    return Get.snackbar(
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
      icon: Icon(Icons.alarm, size: 40),
      shouldIconPulse: true,
      reverseAnimationCurve: Curves.bounceIn,
      borderRadius: 8,
      dismissDirection: DismissDirection.horizontal,
      backgroundColor: Colors.amber,
      snackPosition: SnackPosition.TOP,
    );
  }

  Future getDialog() {
    return Get.defaultDialog(
      title: 'Hello',
      content: Text('How Are You?'),
      confirm: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {
          Get.back();
        },
        child: Text('ok'),
      ),
    );
  }

  Future getbottomsheet() {
    return Get.bottomSheet(
      Draggable(
        feedback: Text('fuck you'),
        child: BottomSheet(
          backgroundColor: Colors.white,
          onClosing: () {},
          builder: (context) {
            return SizedBox(height: 400, child: Column(children: [ListTile()]));
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:just_convert_it/models/all_constants.dart';
import 'package:just_convert_it/view/more_than_ones/more_thyan_ones.dart';

showData(BuildContext context, String? data) {
  AlertDialog alert = AlertDialog(
      contentTextStyle: TextStyle(fontSize: 18, color: w),
      // backgroundColor: Colors.transparent,
      actions: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 35,
            width: 70,
            child: Center(child: text(content: "close", c: b, size: 18)),
            decoration: BoxDecoration(
                border: Border.all(
                  color: d6,
                ),
                borderRadius: BorderRadius.circular(5)),
          ),
        ),
        GestureDetector(
          onTap: () {
            Clipboard.setData(ClipboardData(text: data));
            Navigator.pop(context);

            Fluttertoast.showToast(
                msg: "copied to clipboard",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);
          },
          child: Container(
            height: 35,
            width: 70,
            child: Center(child: text(content: "copy", c: b, size: 18)),
            decoration: BoxDecoration(
                border: Border.all(
                  color: d6,
                ),
                borderRadius: BorderRadius.circular(5)),
          ),
        ),
      ],
      content: text(content: data, c: b, size: 15));

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

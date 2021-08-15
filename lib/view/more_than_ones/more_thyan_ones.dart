import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_convert_it/models/all_constants.dart';
import 'package:just_convert_it/view/screen/encoding_decoding/base64.dart';
import 'package:just_convert_it/view/screen/root_screen.dart';

Widget text(
    {String? content,
    Color? c,
    double? size,
    FontWeight fw = FontWeight.w500}) {
  return Text(
    content.toString(),
    style: GoogleFonts.getFont('Sen',
        color: c, fontSize: size, fontWeight: fw),
  );
}

Widget drawerElement(BuildContext context)
{
  return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (c) => RootSc()));
              },
              child: Container(
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                    color: d6, borderRadius: BorderRadius.circular(30)),
                child: Center(child: text(content: "r", c: w, size: 18)),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (c) => Base64()));
              },
              child: Container(
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                    color: d6, borderRadius: BorderRadius.circular(30)),
                child: Center(child: text(content: "e", c: w, size: 18)),
              ),
            ),
          ],
        );

}
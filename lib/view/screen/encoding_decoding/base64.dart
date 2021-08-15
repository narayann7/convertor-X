import 'package:flutter/material.dart';
import 'package:just_convert_it/models/all_constants.dart';
import 'package:just_convert_it/models/encoding_decoding.dart';
import 'package:just_convert_it/view/more_than_ones/dialogboxs.dart';
import 'package:just_convert_it/view/more_than_ones/more_thyan_ones.dart';

class Base64 extends StatefulWidget {
  Base64({Key? key}) : super(key: key);

  @override
  _Base64State createState() => _Base64State();
}

class _Base64State extends State<Base64> {
  TextEditingController testE = TextEditingController();
  var en, dc;
  bool ec = true;
  var hint = "x 1";

  var titile = "Base64";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        drawer: Drawer(child: drawerElement(context)),
        appBar: AppBar(
          backgroundColor: d6,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
              ),
              Row(
                // mainAxisAlignment:MainAxisAlignment.center,
                children: [
                   SizedBox(width: MediaQuery.of(context).size.width * 0.4,),
                  text(c: b, content: titile, size: 30),
                SizedBox(width: MediaQuery.of(context).size.width * 0.16,),
                  DropdownButton<String>(
                    hint: text(c: b, content: titile, size: 15),
                    items: <String>["Base64", "Base32"].map((String value) {
                      return DropdownMenuItem<String>(
                        onTap: () {
                          setState(() {
                            titile = value;
                          });
                        },
                        value: value,
                        child: text(c: b, content: value, size: 15),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.033,
                width: MediaQuery.of(context).size.width * 0.38,
                decoration: BoxDecoration(
                    color: grey, borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (ec == false) {
                          setState(() {
                            ec = !ec;
                          });
                        }
                      },
                      child: Container(
                        child: Center(
                            child: text(content: "encode", c: w, size: 17)),
                        height: MediaQuery.of(context).size.height * 0.033,
                        width: MediaQuery.of(context).size.width * (0.38 / 2),
                        decoration: BoxDecoration(
                            color: ec == true ? d6 : grey,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (ec == true) {
                          setState(() {
                            ec = !ec;
                          });
                        }
                      },
                      child: Container(
                        child: Center(
                            child: text(content: "decode", c: w, size: 17)),
                        height: MediaQuery.of(context).size.height * 0.033,
                        width: MediaQuery.of(context).size.width * (0.38 / 2),
                        decoration: BoxDecoration(
                            color: ec == true ? grey : d6,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black, style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                    trailing: DropdownButton<String>(
                      hint: text(c: b, content: hint, size: 15),
                      items: <String>['x 1', 'x 2', 'x 3', 'x 4', "x 5"]
                          .map((String value) {
                        return DropdownMenuItem<String>(
                          onTap: () {
                            setState(() {
                              hint = value;
                            });
                          },
                          value: value,
                          child: text(c: b, content: value, size: 15),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
                    title: TextField(
                      controller: testE,
                      onChanged: (e) {
                        setState(() {
                          en = e;
                        });
                      },
                      decoration: InputDecoration(
                          hintText: "Enter or Paste here ",
                          alignLabelWithHint: true,
                          border: InputBorder.none,
                          hintStyle: TextStyle()),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();

                  if (ec == true) {
                    if (int.parse(titile[titile.length - 1]) == 4) {
                      showData(
                          context,
                          EncodeDecode.base64Encoder(
                              en, int.parse(hint[hint.length - 1])));
                    } else {
                      showData(
                          context,
                          EncodeDecode.base32Encoder(
                              en, int.parse(hint[hint.length - 1])));
                    }
                  } else {
                    if (int.parse(titile[titile.length - 1]) == 4) {
                      showData(
                          context,
                          EncodeDecode.base64Decoder(
                              en, int.parse(hint[hint.length - 1])));
                    } else {
                      showData(
                          context,
                          EncodeDecode.base32Decoder(
                              en, int.parse(hint[hint.length - 1])));
                    }
                  }
                },
                child: Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                      color: d6, borderRadius: BorderRadius.circular(30)),
                  child: Center(
                      child: text(
                          content: ec == true ? "Encode" : "Decode",
                          c: w,
                          size: 18)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

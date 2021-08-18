import 'package:flutter/material.dart';
import 'package:just_convert_it/models/all_constants.dart';
import 'package:just_convert_it/models/units/units.dart';
import 'package:just_convert_it/view/more_than_ones/more_thyan_ones.dart';

//testing am command
class UnitConvertion extends StatefulWidget {
  UnitConvertion({Key? key}) : super(key: key);

  @override
  _UnitConvertionState createState() => _UnitConvertionState();
}

class _UnitConvertionState extends State<UnitConvertion> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  String displayUnit = "Length", from = "meters", to = "centimeters";
  int displayUnitIndex = 0, fromIndex = 0, toIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        drawer: Drawer(child: drawerElement(context)),
        appBar: AppBar(
          backgroundColor: d6,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            actions: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: 35,
                                  width: 70,
                                  child: Center(
                                      child: text(
                                          content: "close", c: b, size: 18)),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: d6,
                                      ),
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                              ),
                            ],
                            content: Container(
                              height: MediaQuery.of(context).size.height * 0.40,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(),
                              child: ListView.builder(
                                itemCount: UnitsX.unitList.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          displayUnit = UnitsX.unitList[index];
                                          displayUnitIndex = index;
                                        });
                                        print(displayUnit);
                                        Navigator.pop(context);
                                      },
                                      child: text(
                                          content: UnitsX.unitList[index],
                                          c: b,
                                          size: 35));
                                },
                              ),
                            ),
                          );
                        });
                  },
                  child: text(c: b, content: displayUnit, size: 30)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                actions: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      height: 35,
                                      width: 70,
                                      child: Center(
                                          child: text(
                                              content: "close",
                                              c: b,
                                              size: 18)),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: d6,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    ),
                                  ),
                                ],
                                content: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.40,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(),
                                  child: ListView.builder(
                                    itemCount:
                                        UnitsX.Units[displayUnitIndex].length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              from =
                                                  UnitsX.Units[displayUnitIndex]
                                                      [index];
                                              fromIndex = index;
                                            });
                                            print(displayUnit);

                                            Navigator.pop(context);
                                          },
                                          child: text(
                                              content:
                                                  UnitsX.Units[displayUnitIndex]
                                                      [index],
                                              c: b,
                                              size: 35));
                                    },
                                  ),
                                ),
                              );
                            });
                      },
                      child: text(c: b, content: from, size: 20)),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextField(
                      controller: t1,
                      onChanged: (text) {
                        Function convertFunction =
                            UnitsX.setFunction(displayUnitIndex);

                        setState(() {
                          var value = convertFunction(
                              double.parse(text), fromIndex, toIndex);
                          t2.text = value.toString();
                        });
                      },
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                actions: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      height: 35,
                                      width: 70,
                                      child: Center(
                                          child: text(
                                              content: "close",
                                              c: b,
                                              size: 18)),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: d6,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    ),
                                  ),
                                ],
                                content: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.40,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(),
                                  child: ListView.builder(
                                    itemCount:
                                        UnitsX.Units[displayUnitIndex].length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              to =
                                                  UnitsX.Units[displayUnitIndex]
                                                      [index];
                                              toIndex = index;
                                            });
                                            print(displayUnit);

                                            Navigator.pop(context);
                                          },
                                          child: text(
                                              content:
                                                  UnitsX.Units[displayUnitIndex]
                                                      [index],
                                              c: b,
                                              size: 35));
                                    },
                                  ),
                                ),
                              );
                            });
                      },
                      child: text(c: b, content: to, size: 20)),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextField(
                      controller: t2,
                      enabled: false,
                    ),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    t1.text = "0";
                  });
                  // UnitsX unitsX = UnitsX();

                  // var x = UnitsX.unitClass[0];
                  // print(LengthX.convertLength(1, 1, 2));
                },
                child: Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                      color: d6, borderRadius: BorderRadius.circular(30)),
                  child: Center(child: text(content: "click", c: w, size: 18)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

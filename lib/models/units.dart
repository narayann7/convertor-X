import 'package:just_convert_it/models/units/typesUnit.dart';
import 'package:units_converter/Length.dart';

class UnitsX {
  static List<String> unitList = [
    "Length",
    "Digital data",
    "Angle",
    "Area",
    "Temperature",
    "Energy",
    "Volume",
    "Force",
    "Mass",
    "Power",
    "Pressure",
    "Shoe size",
    "Si prefixes",
    "Speed",
    "Time",
    "Torque",
  ];

  static List<List<String>> Units = [
    typeUnits.lengthX,
    typeUnits.digitalDataX,
    typeUnits.angleX,
    typeUnits.areaX,
    typeUnits.tempX,
    typeUnits.energyX,
    typeUnits.volumeX,
    typeUnits.forceX,
    typeUnits.massX,
    typeUnits.powerX,
    typeUnits.pressureX,
    typeUnits.shoeSizeX,
    typeUnits.siPrefixeX,
    typeUnits.speedX,
    typeUnits.timeX,
    typeUnits.torqueX,
  ];
}
// int len = 1;
// String c = "inches";
// var length = Length();

// length.convert(LENGTH.feet, 1);
// print(length.centimeters.value);

class LengthX {
  static convertLength(double number, int from, int to) {
    var length = Length();

    if (from == 0) length.convert(LENGTH.meters, number);
    if (from == 1) length.convert(LENGTH.centimeters, number);
    if (from == 2) length.convert(LENGTH.inches, number);
    if (from == 3) length.convert(LENGTH.feet, number);
    if (from == 4) length.convert(LENGTH.nautical_miles, number);
    if (from == 5) length.convert(LENGTH.yards, number);
    if (from == 6) length.convert(LENGTH.miles, number);
    if (from == 7) length.convert(LENGTH.millimeters, number);
    if (from == 8) length.convert(LENGTH.micrometers, number);
    if (from == 9) length.convert(LENGTH.nanometers, number);
    if (from == 10) length.convert(LENGTH.angstroms, number);
    if (from == 11) length.convert(LENGTH.picometers, number);
    if (from == 12) length.convert(LENGTH.kilometers, number);
    if (from == 13) length.convert(LENGTH.astronomical_units, number);
    if (from == 14) length.convert(LENGTH.light_years, number);
    if (from == 15) length.convert(LENGTH.parsec, number);
    if (from == 16) length.convert(LENGTH.miles, number);

    if (to == 0) return length.meters.value;
    if (to == 1) return length.centimeters.value;
    if (to == 2) return length.inches.value;
    if (to == 3) return length.feet.value;
    if (to == 4) return length.nautical_miles.value;
    if (to == 5) return length.yards.value;
    if (to == 6) return length.miles.value;
    if (to == 7) return length.millimeters.value;
    if (to == 8) return length.micrometers.value;
    if (to == 9) return length.nanometers.value;
    if (to == 10) return length.angstroms.value;
    if (to == 11) return length.picometers.value;
    if (to == 12) return length.kilometers.value;
    if (to == 13) return length.astronomical_units.value;
    if (to == 14) return length.light_years.value;
    if (to == 15) return length.parsec.value;
    if (to == 16) return length.miles.value;
  }
}

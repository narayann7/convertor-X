import 'package:just_convert_it/models/units/typesUnit.dart';
import 'package:units_converter/Angle.dart';
import 'package:units_converter/Area.dart';
import 'package:units_converter/DigitalData.dart';
import 'package:units_converter/Energy.dart';
import 'package:units_converter/Length.dart';
import 'package:units_converter/Temperature.dart';
import 'package:units_converter/units_converter.dart';

class UnitsX {
  static setFunction(int index) {
    Function convert;

    if (index == 0) {
      convert = convertLength;
      return convert;
    }
    if (index == 1) {
      convert = convertDigitalData;
      return convert;
    }
    if (index == 2) {
      convert = convertAngle;
      return convert;
    }
    if (index == 3) {
      convert = convertArea;
      return convert;
    }
    if (index == 4) {
      convert = convertTemp;
      return convert;
    }
    if (index == 5) {
      convert = convertEnergy;
      return convert;
    }
    if (index == 6) {
      convert = convertVolume;
      return convert;
    }
    if (index == 7) {
      convert = convertForce;
      return convert;
    }
    if (index == 8) {
      convert = convertMass;
      return convert;
    }
    if (index == 9) {
      convert = convertPower;
      return convert;
    }
    if (index == 10) {
      convert = convertPressure;
      return convert;
    }
    if (index == 11) {
      convert = convertTime;
      return convert;
    }
    if (index == 12) {
      convert = convertTorque;
      return convert;
    }
  }

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
    typeUnits.timeX,
    typeUnits.torqueX,
  ];

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

  static convertDigitalData(double number, int from, int to) {
    var digital = DigitalData();
    if (from == 0) digital.convert(DIGITAL_DATA.bit, number);
    if (from == 1) digital.convert(DIGITAL_DATA.nibble, number);
    if (from == 2) digital.convert(DIGITAL_DATA.kilobit, number);
    if (from == 3) digital.convert(DIGITAL_DATA.megabit, number);
    if (from == 4) digital.convert(DIGITAL_DATA.gigabit, number);
    if (from == 5) digital.convert(DIGITAL_DATA.terabit, number);
    if (from == 6) digital.convert(DIGITAL_DATA.petabit, number);
    if (from == 7) digital.convert(DIGITAL_DATA.exabit, number);
    if (from == 8) digital.convert(DIGITAL_DATA.kibibit, number);
    if (from == 9) digital.convert(DIGITAL_DATA.mebibit, number);
    if (from == 10) digital.convert(DIGITAL_DATA.gibibit, number);
    if (from == 11) digital.convert(DIGITAL_DATA.tebibit, number);
    if (from == 12) digital.convert(DIGITAL_DATA.pebibit, number);
    if (from == 13) digital.convert(DIGITAL_DATA.exbibit, number);
    if (from == 14) digital.convert(DIGITAL_DATA.byte, number);
    if (from == 15) digital.convert(DIGITAL_DATA.kilobyte, number);
    if (from == 16) digital.convert(DIGITAL_DATA.megabyte, number);
    if (from == 17) digital.convert(DIGITAL_DATA.gigabyte, number);
    if (from == 18) digital.convert(DIGITAL_DATA.terabyte, number);
    if (from == 19) digital.convert(DIGITAL_DATA.pebibyte, number);
    if (from == 20) digital.convert(DIGITAL_DATA.exabyte, number);
    if (from == 21) digital.convert(DIGITAL_DATA.kibibyte, number);
    if (from == 22) digital.convert(DIGITAL_DATA.mebibyte, number);
    if (from == 23) digital.convert(DIGITAL_DATA.gibibyte, number);
    if (from == 24) digital.convert(DIGITAL_DATA.tebibyte, number);
    if (from == 25) digital.convert(DIGITAL_DATA.pebibyte, number);
    if (from == 26) digital.convert(DIGITAL_DATA.exbibyte, number);

    if (to == 0) return digital.bit.value;
    if (to == 1) return digital.nibble.value;
    if (to == 2) return digital.kilobit.value;
    if (to == 3) return digital.megabit.value;
    if (to == 4) return digital.gigabit.value;
    if (to == 5) return digital.terabit.value;
    if (to == 6) return digital.petabit.value;
    if (to == 7) return digital.exabit.value;
    if (to == 8) return digital.kibibit.value;
    if (to == 9) return digital.mebibit.value;
    if (to == 10) return digital.gibibit.value;
    if (to == 11) return digital.tebibit.value;
    if (to == 12) return digital.pebibit.value;
    if (to == 13) return digital.exbibit.value;
    if (to == 14) return digital.byte.value;
    if (to == 15) return digital.kilobyte.value;
    if (to == 16) return digital.megabyte.value;
    if (to == 17) return digital.gigabyte.value;
    if (to == 18) return digital.terabyte.value;
    if (to == 19) return digital.petabyte.value;
    if (to == 20) return digital.exabyte.value;
    if (to == 21) return digital.kibibyte.value;
    if (to == 22) return digital.mebibyte.value;
    if (to == 23) return digital.gibibyte.value;
    if (to == 24) return digital.tebibyte.value;
    if (to == 25) return digital.pebibyte.value;
    if (to == 26) return digital.exbibyte.value;
  }

  static convertAngle(double number, int from, int to) {
    var angle = Angle();

    if (from == 0) angle.convert(ANGLE.degree, number);
    if (from == 1) angle.convert(ANGLE.minutes, number);
    if (from == 2) angle.convert(ANGLE.seconds, number);
    if (from == 3) angle.convert(ANGLE.radians, number);

    if (to == 0) return angle.degree.value;
    if (to == 1) return angle.minutes.value;
    if (to == 2) return angle.seconds.value;
    if (to == 3) return angle.radians.value;
  }

  static convertArea(double number, int from, int to) {
    var area = Area();

    if (from == 0) area.convert(AREA.square_meters, number);
    if (from == 1) area.convert(AREA.square_centimeters, number);
    if (from == 2) area.convert(AREA.square_inches, number);
    if (from == 3) area.convert(AREA.square_feet, number);
    if (from == 4) area.convert(AREA.square_miles, number);
    if (from == 5) area.convert(AREA.square_yard, number);
    if (from == 6) area.convert(AREA.square_millimeters, number);
    if (from == 7) area.convert(AREA.square_kilometers, number);
    if (from == 8) area.convert(AREA.hectares, number);
    if (from == 9) area.convert(AREA.acres, number);
    if (from == 10) area.convert(AREA.are, number);

    if (to == 0) return area.square_meters.value;
    if (to == 1) return area.square_centimeters.value;
    if (to == 2) return area.square_inches.value;
    if (to == 3) return area.square_feet.value;
    if (to == 4) return area.square_miles.value;
    if (to == 5) return area.square_yard.value;
    if (to == 6) return area.square_millimeters.value;
    if (to == 7) return area.square_kilometers.value;
    if (to == 8) return area.hectares.value;
    if (to == 9) return area.acres.value;
    if (to == 10) return area.are.value;
  }

  static convertTemp(double number, int from, int to) {
    var temp = Temperature();

    if (from == 0) temp.convert(TEMPERATURE.fahrenheit, number);
    if (from == 1) temp.convert(TEMPERATURE.celsius, number);
    if (from == 2) temp.convert(TEMPERATURE.kelvin, number);
    if (from == 3) temp.convert(TEMPERATURE.reamur, number);
    if (from == 4) temp.convert(TEMPERATURE.romer, number);
    if (from == 5) temp.convert(TEMPERATURE.delisle, number);
    if (from == 6) temp.convert(TEMPERATURE.rankine, number);

    if (to == 0) return temp.fahrenheit.value;
    if (to == 1) return temp.celsius.value;
    if (to == 2) return temp.kelvin.value;
    if (to == 3) return temp.reamur.value;
    if (to == 4) return temp.romer.value;
    if (to == 5) return temp.delisle.value;
    if (to == 6) return temp.rankine.value;
  }

  static convertEnergy(double number, int from, int to) {
    var energy = Energy();

    if (from == 0) energy.convert(ENERGY.joules, number);
    if (from == 1) energy.convert(ENERGY.calories, number);
    if (from == 2) energy.convert(ENERGY.kilowatt_hours, number);
    if (from == 3) energy.convert(ENERGY.electronvolts, number);

    if (to == 0) return energy.joules.value;
    if (to == 1) return energy.calories.value;
    if (to == 2) return energy.kilowatt_hours.value;
    if (to == 3) return energy.electronvolts.value;
  }

  static convertVolume(double number, int from, int to) {
    var volume = Volume();
    if (from == 0) volume.convert(VOLUME.cubic_meters, number);
    if (from == 1) volume.convert(VOLUME.liters, number);
    if (from == 2) volume.convert(VOLUME.imperial_gallons, number);
    if (from == 3) volume.convert(VOLUME.us_gallons, number);
    if (from == 4) volume.convert(VOLUME.milliliters, number);
    if (from == 5) volume.convert(VOLUME.cubic_centimeters, number);
    if (from == 6) volume.convert(VOLUME.cubic_feet, number);
    if (from == 7) volume.convert(VOLUME.cubic_inches, number);
    if (from == 8) volume.convert(VOLUME.cubic_millimeters, number);

    if (to == 0) return volume.cubic_meters.value;
    if (to == 1) return volume.liters.value;
    if (to == 2) return volume.imperial_gallons.value;
    if (to == 3) return volume.us_gallons.value;
    if (to == 4) return volume.milliliters.value;
    if (to == 5) return volume.cubic_centimeters.value;
    if (to == 6) return volume.cubic_feet.value;
    if (to == 7) return volume.cubic_inches.value;
    if (to == 8) return volume.cubic_millimeters.value;
  }

  static convertForce(double number, int from, int to) {
    var force = Force();

    if (from == 0) force.convert(FORCE.newton, number);
    if (from == 1) force.convert(FORCE.dyne, number);
    if (from == 2) force.convert(FORCE.pound_force, number);
    if (from == 3) force.convert(FORCE.kilogram_force, number);
    if (from == 4) force.convert(FORCE.poundal, number);

    if (to == 0) return force.newton.value;
    if (to == 1) return force.dyne.value;
    if (to == 2) return force.pound_force.value;
    if (to == 3) return force.kilogram_force.value;
    if (to == 4) return force.poundal.value;
  }

  static convertMass(double number, int from, int to) {
    var mass = Mass();

    if (from == 0) mass.convert(MASS.grams, number);
    if (from == 1) mass.convert(MASS.kilograms, number);
    if (from == 2) mass.convert(MASS.pounds, number);
    if (from == 3) mass.convert(MASS.ounces, number);
    if (from == 4) mass.convert(MASS.quintals, number);
    if (from == 5) mass.convert(MASS.tons, number);
    if (from == 6) mass.convert(MASS.milligrams, number);
    if (from == 7) mass.convert(MASS.uma, number);
    if (from == 8) mass.convert(MASS.carats, number);
    if (from == 9) mass.convert(MASS.centigrams, number);

    if (to == 0) return mass.grams.value;
    if (to == 1) return mass.kilograms.value;
    if (to == 2) return mass.pounds.value;
    if (to == 3) return mass.ounces.value;
    if (to == 4) return mass.quintals.value;
    if (to == 5) return mass.tons.value;
    if (to == 6) return mass.milligrams.value;
    if (to == 7) return mass.uma.value;
    if (to == 8) return mass.carats.value;
    if (to == 9) return mass.centigrams.value;
  }

  static convertPower(double number, int from, int to) {
    var power = Power();

    if (from == 0) power.convert(POWER.watt, number);
    if (from == 1) power.convert(POWER.milliwatt, number);
    if (from == 2) power.convert(POWER.kilowatt, number);
    if (from == 3) power.convert(POWER.megawatt, number);
    if (from == 4) power.convert(POWER.gigawatt, number);
    if (from == 5) power.convert(POWER.imperial_horse_power, number);

    if (to == 0) return power.watt.value;
    if (to == 1) return power.milliwatt.value;
    if (to == 2) return power.kilowatt.value;
    if (to == 3) return power.megawatt.value;
    if (to == 4) return power.gigawatt.value;
    if (to == 5) return power.imperial_horse_power.value;
  }

  static convertPressure(double number, int from, int to) {
    var pressure = Pressure();

    if (from == 0) pressure.convert(PRESSURE.pascal, number);
    if (from == 1) pressure.convert(PRESSURE.atmosphere, number);
    if (from == 2) pressure.convert(PRESSURE.bar, number);
    if (from == 3) pressure.convert(PRESSURE.millibar, number);
    if (from == 4) pressure.convert(PRESSURE.psi, number);
    if (from == 5) pressure.convert(PRESSURE.torr, number);

    if (to == 0) return pressure.pascal.value;
    if (to == 0) return pressure.atmosphere.value;
    if (to == 0) return pressure.bar.value;
    if (to == 0) return pressure.millibar.value;
    if (to == 0) return pressure.psi.value;
    if (to == 0) return pressure.torr.value;
  }

  static convertTime(double number, int from, int to) {
    var time = Time();
    if (from == 0) time.convert(TIME.seconds, number);
    if (from == 1) time.convert(TIME.deciseconds, number);
    if (from == 2) time.convert(TIME.centiseconds, number);
    if (from == 3) time.convert(TIME.milliseconds, number);
    if (from == 4) time.convert(TIME.microseconds, number);
    if (from == 5) time.convert(TIME.nanoseconds, number);
    if (from == 6) time.convert(TIME.minutes, number);
    if (from == 7) time.convert(TIME.hours, number);
    if (from == 8) time.convert(TIME.days, number);
    if (from == 9) time.convert(TIME.weeks, number);
    if (from == 10) time.convert(TIME.years_365, number);
    if (from == 11) time.convert(TIME.decades, number);
    if (from == 12) time.convert(TIME.centuries, number);

    if (to == 0) return time.seconds.value;
    if (to == 1) return time.deciseconds.value;
    if (to == 2) return time.centiseconds.value;
    if (to == 3) return time.milliseconds.value;
    if (to == 4) return time.microseconds.value;
    if (to == 5) return time.nanoseconds.value;
    if (to == 6) return time.minutes.value;
    if (to == 7) return time.hours.value;
    if (to == 8) return time.days.value;
    if (to == 9) return time.weeks.value;
    if (to == 10) return time.years_365.value;
    if (to == 11) return time.decades.value;
    if (to == 12) return time.centuries.value;
  }

  static convertTorque(double number, int from, int to) {
    var torque = Torque();

    if (from == 0) torque.convert(TORQUE.newton_meter, number);
    if (from == 1) torque.convert(TORQUE.dyne_meter, number);
    if (from == 2) torque.convert(TORQUE.pound_force_feet, number);
    if (from == 3) torque.convert(TORQUE.kilogram_force_meter, number);
    if (from == 4) torque.convert(TORQUE.poundal_meter, number);

    if (to == 0) return torque.newton_meter.value;
    if (to == 1) return torque.dyne_meter.value;
    if (to == 2) return torque.pound_force_feet.value;
    if (to == 3) return torque.kilogram_force_meter.value;
    if (to == 4) return torque.poundal_meter.value;
  }
}

import 'package:just_convert_it/models/units/units.dart';

void main() {
  Function convertFunction = UnitsX.setFunction(0);

  print(convertFunction(1.0,1,1));
}

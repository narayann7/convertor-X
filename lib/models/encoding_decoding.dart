import 'dart:convert';
import 'package:base32/base32.dart';

class EncodeDecode {
  static const BASE64 = Base64Codec();

  static base64Encoder(String? str, int? time) {
    var ans;
    for (int i = 1; i <= time!; i++) {
      var bytes = utf8.encode(str.toString());
      ans = BASE64.encode(bytes);

      str = ans;
    }

    return ans;
  }

  static base64Decoder(String? str, int? time) {
    var ans;
    for (int i = 1; i <= time!; i++) {
      var decode = BASE64.decode(str.toString());
      ans = utf8.decode(decode);
      str = ans;
    }
    return ans;
  }

  static base32Encoder(String? str, int? time) {
    var ans;
    for (int i = 1; i <= time!; i++) {
      ans = base32.encodeString(str.toString());
      str = ans;
    }
    return ans;
  }

  static base32Decoder(String? str, int? time) {
    var ans;
    for (int i = 1; i <= time!; i++) {
      ans = base32.decodeAsString(str.toString());
      str = ans;
    }
    return ans;
  }
}

// import 'dart:io';
// import 'dart:typed_data';

// import 'package:base85/base85.dart';

// void main() {
//   var codec = Base85Codec(Alphabets.z85);
//   var encode = codec.encode(Uint8List.fromList('Hello, world!!!!'.codeUnits));
//   print(encode);

//   /// =>   nm=QNz.92Pz/PV8aT50L
//   print(String.fromCharCodes(codec.decode(encode)));

//   /// =>   Hello, world!!!!

//   codec = Base85Codec(Alphabets.ascii85, AlgoType.ascii85);
//   print(codec.encode(Uint8List.fromList('Hello, world'.codeUnits)));

//   /// =>    <~87cURD_*#TDfTZ)~>
//   print(String.fromCharCodes(codec.decode('<~87cURD_*#TDfTZ)~>')));

//   /// =>    Hello, world

//   codec = Base85Codec(Alphabets.IPv6, AlgoType.IPv6);
//   var address = InternetAddress(
//     '1080::8:800:200c:417a',
//     type: InternetAddressType.IPv6,
//   );
//   print(codec.encode(address.rawAddress));

//   /// =>    4)+k&C#VzJ4br>0wv%Yp
//   ///
//   var decode = codec.decode('4)+k&C#VzJ4br>0wv%Yp');
//   address = InternetAddress.fromRawAddress(
//     decode,
//     type: InternetAddressType.IPv6,
//   );
//   print(address.address);

//   /// =>    1080::8:800:200c:417a
// }



//====================================================================abstract

// import 'package:crypto/crypto.dart';
// import 'dart:convert'; // for the utf8.encode method

// void main() {
//   var bytes = utf8.encode("foobar"); // data being hashed

//   var digest = sha1.convert(bytes);

//   print("Digest as bytes: ${digest.bytes}");
//   print("Digest as hex string: $digest");
// }




//=====================================


// import "package:convert/convert.dart"
// var decoded = base32.decode("JBSWY3DPEHPK3PXP");
// var decodedHex = hex.encode(decoded); // -> '48656c6c6f21deadbeef'
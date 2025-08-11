// import 'package:flutter/services.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
// import 'package:get/get.dart';
//
// class ScanCodeController extends GetxController {
//   RxString scanResult = "".obs; // ✅ no nullable
//
//   Future<void> scanBarcode() async {
//     try {
//       String barcode = await FlutterBarcodeScanner.scanBarcode(
//         '0xFFcbdb8a', // scanner line color
//         "Cancel",
//         false,
//         ScanMode.BARCODE,
//       );
//
//       if (barcode != "-1") { // -1 means cancel
//         scanResult.value = barcode;
//         print("Scanned: $barcode"); // for debugging
//       }
//     } on PlatformException {
//       scanResult.value = "Failed to get result";
//     }
//   }
// }

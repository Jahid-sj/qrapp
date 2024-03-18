
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:qrapp/Login.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qrapp/info.dart';
class Cam extends StatefulWidget {
  const Cam({super.key});

  @override
  State<Cam> createState() => _CamState();
}

class _CamState extends State<Cam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body:
        Center(
          child: Column(
            children: [
              SizedBox(
                width: 100,
                height: 50,
              ),

              MobileScanner(
                // fit: BoxFit.contain,
                onDetect: (capture) {
                  final List<Barcode> barcodes = capture.barcodes;
                  final Uint8List? image = capture.image;
                  for (final barcode in barcodes) {
                    debugPrint('Barcode found! ${barcode.rawValue}');
                  }
                },
              ),
              SizedBox(
                width: 100,
                height: 400,
              ),
              ElevatedButton(onPressed:() {
                Navigator.push(context,MaterialPageRoute(builder: (context)=> Profile()));
              }, child: Text('Scan',style: TextStyle(color: Colors.black),),
                style: TextButton.styleFrom(backgroundColor: Colors.white),
              ),
            ],
          ),
        )

    ) ;
  }
}



// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRScanCodePage extends StatefulWidget {
  const QRScanCodePage({super.key});

  @override
  State<QRScanCodePage> createState() => _QRScanCodePageState();
}

class _QRScanCodePageState extends State<QRScanCodePage> {
  final qrKey = GlobalKey(debugLabel: "QR");
  QRViewController? controller;
  
  @override
  void dispose(){
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            buildQRview(context),
          ]),
      ),
    );
  
} 
  Widget buildQRview(BuildContext context) {
    return QRView(
      key: qrKey,
      onQRViewCreated: onQRViewCreated, 
      );
  }
  void onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller= controller;
    });
  }
  
}
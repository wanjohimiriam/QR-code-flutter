// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCreateCode extends StatefulWidget {
  const QRCreateCode({super.key});

  @override
  State<QRCreateCode> createState() => _QRCreateCodeState();
}

class _QRCreateCodeState extends State<QRCreateCode> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text("QR Code Generator"),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              QrImage(
                data: controller.text,
                size: 200,
                backgroundColor: Colors.white,
              ),
              SizedBox(
                height: 40,
              ),
              buildTextField(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      child: TextField(
          style: TextStyle(
            color: Colors.white24,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
          decoration: InputDecoration(
              hintText: "Enter a text",
              hintStyle: TextStyle(color: Colors.grey),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: Theme.of(context).accentColor,
                ),
              ),
              suffix: IconButton(
                onPressed: () {
                  setState(() {});
                },
                color: Theme.of(context).accentColor,
                icon: Icon(
                  Icons.done,
                  size: 20,
                  color: Colors.white,
                ),
              ))),
    );
  }
}

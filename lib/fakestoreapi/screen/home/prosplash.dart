import 'dart:async';
import 'package:e_commerce_app_api/fakestoreapi/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'prologin.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProductSplash(),
  ));
}

class ProductSplash extends StatefulWidget {
  @override
  State<ProductSplash> createState() => _ProductSplashState();
}

class _ProductSplashState extends State<ProductSplash> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => ProductLogin()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colorsapp.primaryColor,
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              "assets/animation/icon.png",
              width: 100,
              height: 100,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "SHOPIN",
              style: GoogleFonts.sansita(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ]),
        ));
  }
}

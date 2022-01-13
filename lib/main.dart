import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shodai_ecomerce/screens/homepage/home_page.dart';


void main() {
  runApp( ShodaiMamaApp());
}

class ShodaiMamaApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    const MaterialColor kPrimaryColor = MaterialColor(
      0xFF0E7AC7,
      <int, Color>{
        50: Color(0xFF006a4e),
        100: Color(0xFF006a4e),
        200: Color(0xFF006a4e),
        300: Color(0xFF006a4e),
        400: Color(0xFF006a4e),
        500: Color(0xFF006a4e),
        600: Color(0xFF006a4e),
        700: Color(0xFF006a4e),
        800: Color(0xFF006a4e),
        900: Color(0xFF006a4e),
      },
    );
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: kPrimaryColor,
      ),
      home: MyHomePage(),
    );
  }
}



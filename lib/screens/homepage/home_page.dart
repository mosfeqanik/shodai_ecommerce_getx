import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shodai_ecomerce/screens/components/my_drawer.dart';
import 'package:shodai_ecomerce/utils/app_colors.dart';
import 'package:shodai_ecomerce/utils/app_strings.dart';
import 'package:shodai_ecomerce/utils/assets_strings.dart';
import 'package:shodai_ecomerce/utils/themes_styles.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.Home,
          style: TextThemes.AppBartitleColoWhite,
        ),
        backgroundColor: AppColors.kPrimaryGreenColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_outlined,
              size: 25,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
              AssetStrings.Cart_Icon_SVG,
              width: 25,
              height: 25,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 15,)
        ],
      ),
      drawer: MyDrawerPart(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},

        child: SvgPicture.asset(
          AssetStrings.Cart_Icon_SVG,
          width: 25,
          height: 25,
          color: Colors.white,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shodai_ecomerce/utils/app_colors.dart';
import 'package:shodai_ecomerce/utils/assets_strings.dart';
import 'package:shodai_ecomerce/utils/themes_styles.dart';

class MyDrawerPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  AssetStrings.LOGO_PNG,
                  height: 40,
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  label: Text(
                    'Login',
                    style: TextThemes.DrawerLoginButtonTextColor,
                  ),
                  icon: const Icon(
                    Icons.logout_outlined,
                    color: AppColors.kPrimaryGreenColor,
                    size: 20,
                  ),
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(
                        width: 2.0,
                        color: AppColors.kPrimaryGreenColor,
                      ),
                      primary: Colors.white,
                      textStyle: TextThemes.DrawerLoginButtonTextColor),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.info,
                    size: 30,
                    color: AppColors.kgreyColor,
                  ),
                )
              ],
            ),
          ),
          ListTile(
            leading: Image.asset(
              AssetStrings.Hygeine_PNG,
              height: 45,
            ),
            title: Text(
              'Hygiene',
              style: TextThemes.DrawerListItemBlack,
            ),
          ),
          ListTile(
            leading: Image.asset(
              AssetStrings.Breakfast_PNG,
              height: 45,
            ),
            title: Text(
              'Breakfast & Snacks',
              style: TextThemes.DrawerListItemBlack,
            ),
          ),
          ListTile(
            leading: Image.asset(
              AssetStrings.Cooking_PNG,
              height: 45,
            ),
            title: Text(
              'Cooking',
              style: TextThemes.DrawerListItemBlack,
            ),
          ),
          ListTile(
            leading: Image.asset(
              AssetStrings.Meat_And_Fish_PNG,
              height: 45,
            ),
            title: Text(
              'Meat And Fish',
              style: TextThemes.DrawerListItemBlack,
            ),
          ),
          ListTile(
            leading: Image.asset(
              AssetStrings.Fruits_And_Vegetable_PNG,
              height: 45,
            ),
            title: Text(
              'Fruits And Vegetable',
              style: TextThemes.DrawerListItemBlack,
            ),
          ),
          ListTile(
            leading: Image.asset(
              AssetStrings.Dairy_PNG,
              height: 45,
            ),
            title: Text(
              'Dairy',
              style: TextThemes.DrawerListItemBlack,
            ),
          ),
          ListTile(
            leading: Image.asset(
              AssetStrings.Frozen_And_Canned_PNG,
              height: 45,
            ),
            title: Text(
              'Frozen And Canned',
              style: TextThemes.DrawerListItemBlack,
            ),
          ),
          ListTile(
            leading: Image.asset(
              AssetStrings.Beverages_PNG,
              height: 45,
            ),
            title: Text(
              'Beverages',
              style: TextThemes.DrawerListItemBlack,
            ),
          ),
          ListTile(
            leading: Image.asset(
              AssetStrings.Kids_care_PNG,
              height: 45,
            ),
            title: Text(
              'Kids care',
              style: TextThemes.DrawerListItemBlack,
            ),
          ),
          ListTile(
            leading: Image.asset(
              AssetStrings.Personal_PNG,
              height: 45,
            ),
            title: Text(
              'Personal care',
              style: TextThemes.DrawerListItemBlack,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(top: 10,bottom: 20,right: 20,left: 20),
              color: AppColors.kOrangeColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.phone_outlined,
                            size: 30,
                            color: AppColors.kwhiteColor,
                          ),
                        ),
                        Text("Call Us",style: TextThemes.DrawerListBottomColorWhite,)
                      ],
                    ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.question,
                          size: 30,
                          color: AppColors.kwhiteColor,
                        ),
                      ),
                      Text("FAQ",style: TextThemes.DrawerListBottomColorWhite,)
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.question_answer,
                          size: 30,
                          color: AppColors.kwhiteColor,
                        ),
                      ),
                      Text("Chat Now",style: TextThemes.DrawerListBottomColorWhite,)
                    ],
                  )
                ],
              ),
            ),
          )


        ],
      ),
    );
  }
}

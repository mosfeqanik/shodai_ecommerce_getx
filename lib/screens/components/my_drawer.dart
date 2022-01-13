import 'package:flutter/material.dart';
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
            leading: Icon(Icons.home),
            title: Text(
              'Home',
              style: TextThemes.DrawerListItemBlack,
            ),
          ),
          ListTile(
            leading: Icon(Icons.perm_identity_outlined),
            title: Text(
              'Profile',
              style: TextThemes.DrawerListItemBlack,
            ),
          ),
          ListTile(
            leading: Icon(Icons.space_dashboard_outlined),
            title: Text(
              'Orders',
              style: TextThemes.DrawerListItemBlack,
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite_border_outlined),
            title: Text(
              'My Wishlists',
              style: TextThemes.DrawerListItemBlack,
            ),
          ),
          ListTile(
            leading: Icon(Icons.mode_comment_outlined),
            title: Text(
              'Message',
              style: TextThemes.DrawerListItemBlack,
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_balance_wallet_outlined),
            title: Text(
              'Home',
              style: TextThemes.DrawerListItemBlack,
            ),
          ),
          ListTile(
            leading: Icon(Icons.logout_outlined),
            title: Text(
              'Logout',
              style: TextThemes.DrawerListItemBlack,
            ),
          ),
        ],
      ),
    );
  }
}

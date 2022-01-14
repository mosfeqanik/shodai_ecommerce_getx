import 'package:flutter/material.dart';
import 'package:shodai_ecomerce/utils/app_strings.dart';
import 'package:shodai_ecomerce/utils/themes_styles.dart';

class ProductHeadingWithDetails extends StatelessWidget {
  final String heading;
  final String headingDetails;
  final Color HeadingSideColor;


  ProductHeadingWithDetails(
  {this.heading, this.headingDetails, this.HeadingSideColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      decoration: const BoxDecoration(
        border: Border(
          left: BorderSide(width: 12.0, color: Colors.green),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: TextThemes.OffersHeadingTextBlack,
          ),
          Text(headingDetails,
              style: TextThemes.HeadingTextBanglaStyle)
        ],
      ),
    );
  }
}

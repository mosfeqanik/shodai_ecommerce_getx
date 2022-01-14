import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
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
  final List<String> _carouselImages = [
    AssetStrings.CarouselBanner1_PNG,
    AssetStrings.CarouselBanner2_PNG,
    AssetStrings.CarouselBanner3_PNG,
    AssetStrings.CarouselBanner4_PNG,
    AssetStrings.CarouselBanner5_PNG,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kwhiteBGColor,
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
          const SizedBox(
            width: 15,
          )
        ],
      ),
      drawer: MyDrawerPart(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Slider
              AspectRatio(
                aspectRatio: 19 / 7.5,
                child: CarouselSlider(
                  items: _carouselImages
                      .map(
                        (item) => Stack(
                          children: <Widget>[
                            Image(
                              image: AssetImage(item),
                              height: 250,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                    enlargeStrategy: CenterPageEnlargeStrategy.scale,
                  ),
                ),
              ),
              ///Location Bar
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                color: AppColors.kPrimaryGreenColor,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          color: AppColors.kwhiteColor,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Adabor',
                          style: TextThemes.AppBartitleColoWhite,
                        )
                      ],
                    ),
                    Icon(
                      Icons.edit_location_outlined,
                      color: AppColors.kwhiteColor,
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: Text('ShodaiMama Offers',
                    style: TextThemes.OffersHeadingTextBlack),
              ),
              Container(
                width: 220,
                height: 200,
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image(
                        image: AssetImage(AssetStrings.Offer_Banner_PNG),
                        fit: BoxFit.fill,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text(AppStrings.Banner_Offer_Bangla,style: TextThemes.offerTextStyle,),
                          const Icon(
                            Icons.chevron_right_outlined,
                            size: 20,
                            color: AppColors.kLightBlueColor,
                          ),
                        ],),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
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
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/home_category_item.dart';
import 'package:space/widgets/home_popular_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int categoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhiteGreyColor,
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: kWhiteColor,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_home.png',
                  width: 24,
                ),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_wishlist.png',
                  width: 24,
                ),
                label: 'wishlist',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_profile.png',
                  width: 24,
                ),
                label: 'profile',
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            Image.asset(
              'assets/image_background.png',
            ),
            ListView(
              children: [
                // NOTE: HEADER/TITLE
                Container(
                  margin: const EdgeInsets.only(top: 24),
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/logo_dark.png',
                        width: 53,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Space',
                        style: blackTextStyle.copyWith(
                            fontSize: 20, fontWeight: bold),
                      ),
                      const Spacer(),
                      Image.asset(
                        'assets/icon_cart.png',
                        width: 30,
                      ),
                    ],
                  ),
                ),

                // NOTE: SEARCH BAR
                Container(
                  margin: const EdgeInsets.only(
                    top: 30,
                    left: 24,
                    right: 24,
                  ),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: kWhiteColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Search Furniture',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                      Image.asset(
                        'assets/icon_search.png',
                        color: kGreyColor,
                        width: 24,
                      ),
                    ],
                  ),
                ),

                // NOTE: CATEGORY TITLE
                Container(
                  margin: const EdgeInsets.only(
                    top: 30,
                    left: 24,
                    right: 24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Category',
                        style: blackTextStyle.copyWith(
                            fontSize: 20, fontWeight: semiBold),
                      ),
                      Text(
                        'Show All',
                        style: blackTextStyle,
                      ),
                    ],
                  ),
                ),

                // NOTE: CATEGORY CAROUSEL
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  child: CarouselSlider(
                    items: const [
                      HomeCategoryItem(
                        title: 'Minimalis Chair',
                        subTitle: 'Chair',
                        imageUrl: 'assets/image_product_category1.png',
                      ),
                      HomeCategoryItem(
                        title: 'Minimalis Table',
                        subTitle: 'Table',
                        imageUrl: 'assets/image_product_category2.png',
                      ),
                      HomeCategoryItem(
                        title: 'Minimalis Chair',
                        subTitle: 'Chair',
                        imageUrl: 'assets/image_product_category3.png',
                      ),
                    ],
                    options: CarouselOptions(
                      height: 130,
                      enableInfiniteScroll: false,
                      viewportFraction: 0.92,
                      onPageChanged: (index, _) {
                        setState(() {
                          categoryIndex = index;
                        });
                      },
                    ),
                  ),
                ),

                // NOTE : INDICATOR CARAOUSEL
                Container(
                  margin: const EdgeInsets.only(
                    top: 13,
                    left: 24,
                    right: 24,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              categoryIndex == 0 ? kBlackColor : kLineDarkColor,
                        ),
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              categoryIndex == 1 ? kBlackColor : kLineDarkColor,
                        ),
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              categoryIndex == 2 ? kBlackColor : kLineDarkColor,
                        ),
                      ),
                    ],
                  ),
                ),

                // NOTE : POPULAR PRODUCT
                Container(
                  margin: const EdgeInsets.only(top: 24),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                    color: kWhiteColor,
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(24, 24, 24, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Popular',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                                fontSize: 24,
                              ),
                            ),
                            Text(
                              'Show All',
                              style: blackTextStyle,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        height: 310,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              HomePopularItem(
                                imageUrl: 'assets/image_product_popular1.png',
                                title: 'Poan Chair',
                                price: 34,
                                isWishlist: true,
                              ),
                              HomePopularItem(
                                imageUrl: 'assets/image_product_popular2.png',
                                title: 'Poo Chair',
                                price: 14,
                                isWishlist: false,
                              ),
                              HomePopularItem(
                                imageUrl: 'assets/image_product_popular3.png',
                                title: 'Soap Chair',
                                price: 24,
                                isWishlist: false,
                              ),
                              const SizedBox(width: 24),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

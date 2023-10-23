import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/home_category_item.dart';
import 'package:space/widgets/product_grid_item.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: AppBar(
          elevation: 0,
          backgroundColor: kWhiteColor,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.chevron_left,
                  color: kBlackColor,
                ),
              ),
              const SizedBox(
                width: 18,
              ),
              Text(
                'Chair',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
              const Spacer(),
              Image.asset(
                'assets/icon_search.png',
                width: 24,
              ),
              const SizedBox(
                width: 18,
              ),
              Image.asset(
                'assets/icon_filter.png',
                width: 24,
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: const [
          SizedBox(
            height: 10,
          ),
          HomeCategoryItem(
            title: 'Minimalis Chair',
            subTitle: 'Chair',
            imageUrl: 'assets/image_product_category1.png',
          ),
          SizedBox(
            height: 24,
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 18,
            runSpacing: 18,
            children: [
              ProductGridItem(
                imageUrl: 'assets/image_product_grid1.png',
                title: 'Poan Chair',
                price: 34,
                isWishList: false,
              ),
              ProductGridItem(
                imageUrl: 'assets/image_product_grid2.png',
                title: 'Poan Chair',
                price: 34,
                isWishList: true,
              ),
              ProductGridItem(
                imageUrl: 'assets/image_product_grid3.png',
                title: 'Poan Chair',
                price: 34,
                isWishList: false,
              ),
              ProductGridItem(
                imageUrl: 'assets/image_product_grid4.png',
                title: 'Poan Chair',
                price: 34,
                isWishList: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

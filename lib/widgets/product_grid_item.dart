import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:space/theme.dart';

class ProductGridItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final int price;
  final bool isWishList;

  const ProductGridItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.isWishList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        width: (MediaQuery.of(context).size.width - 82) / 2,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageUrl,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$$price',
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 18,
                  ),
                ),
                Image.asset(
                  isWishList ? 
                    'assets/button_wishlist_active.png' : 'assets/button_wishlist.png',
                    height: 44,
                    width: 44,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class HomePopularItem extends StatelessWidget {
  String imageUrl;
  String title;
  int price;
  bool isWishlist;

  HomePopularItem(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.price,
      required this.isWishlist})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.only(left: 24),
          child: Column(
            children: [
              Container(
                width: 200,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(10),
                  ),
                  color: kWhiteGreyColor,
                ),
                child: Center(
                  child: Image.asset(
                    imageUrl,
                    width: 160,
                  ),
                ),
              ),
              Container(
                width: 200,
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$$price',
                          style: blackTextStyle.copyWith(
                              fontWeight: semiBold, fontSize: 18),
                        ),
                        Image.asset(
                          isWishlist
                              ? 'assets/button_wishlist_active.png'
                              : 'assets/button_wishlist.png',
                          width: 44,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

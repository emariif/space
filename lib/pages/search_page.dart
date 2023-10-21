import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/recommendation_item.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 70),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kWhiteColor,
          elevation: 0,
          title: Row(
            children: [
              Icon(
                Icons.chevron_left,
                color: kBlackColor,
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: kWhiteGreyColor,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          textInputAction: TextInputAction.go,
                          onFieldSubmitted: (value) {
                            Navigator.pushNamed(context, '/search-result-page');
                          },
                          decoration: InputDecoration.collapsed(
                            hintText: 'Search furniture',
                            hintStyle: greyTextStyle.copyWith(
                                fontSize: 16, fontWeight: semiBold),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.close,
                        color: kGreyColor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 41,
          ),
          Text(
            'Recommendation',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 20,
          ),
          const RecommendationItem(
            imageUrl: 'assets/image_product_list1.png',
            title: 'Poan Chair',
            price: 34,
          ),
          const RecommendationItem(
            imageUrl: 'assets/image_product_list2.png',
            title: 'Poan Chair',
            price: 24,
          ),
          const RecommendationItem(
            imageUrl: 'assets/image_product_list3.png',
            title: 'Poan Chair',
            price: 54,
          ),
          const RecommendationItem(
            imageUrl: 'assets/image_product_list4.png',
            title: 'Poan Chair',
            price: 44,
          ),
        ],
      ),
    );
  }
}

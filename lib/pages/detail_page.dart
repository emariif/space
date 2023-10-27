import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/review_item.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Color indicatorColor = const Color(0xff394A54);
  double indicatorMargin = 5;
  int currentIndex = 1;
  bool isExpand = false;
  bool isShowReview = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      extendBody: true,
      body: Stack(
        children: [
          Image.asset(
            'assets/image_background.png',
          ),
          Container(
            margin: const EdgeInsets.only(top: 95),
            child: Image.asset(
              'assets/image_detail$currentIndex.png',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: const EdgeInsets.only(
                top: 66,
                left: 20,
              ),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kWhiteColor,
                border: Border.all(
                  color: kLineDarkColor,
                ),
              ),
              child: const Icon(
                Icons.chevron_left,
              ),
            ),
          ),
          SizedBox.expand(
            child: DraggableScrollableSheet(
              initialChildSize: 0.35,
              minChildSize: 0.35,
              maxChildSize: 0.93,
              builder: (BuildContext build, ScrollController scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                    color: kWhiteColor,
                  ),
                  child: NotificationListener(
                    onNotification: (Notification notif) {
                      if (notif is ScrollEndNotification) {
                        if (scrollController.offset > 0) {
                          // print('Setting isExpand to true');
                          setState(() {
                            isExpand = true;
                          });
                        } else {
                          // print('Setting isExpand to false');
                          setState(() {
                            isExpand = false;
                            isShowReview = false;
                          });
                        }
                      }
                      return true;
                    },
                    child: SingleChildScrollView(
                      controller: scrollController,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 16,
                          ),
                          Center(
                            child: Container(
                              width: 30,
                              height: 4,
                              decoration: BoxDecoration(
                                color: kWhiteGreyColor,
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Poang Chair',
                                style: blackTextStyle.copyWith(
                                  fontSize: 24,
                                  fontWeight: semiBold,
                                ),
                              ),
                              Text(
                                '\$209',
                                style: blackTextStyle.copyWith(
                                  fontSize: 24,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            'IKOE',
                            style: blackTextStyle.copyWith(
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          SizedBox(
                            height: 50,
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Row(
                                  children: [
                                    colorIndicator(const Color(0xff394A54), 0),
                                    colorIndicator(const Color(0xffEBA823), 1),
                                    colorIndicator(const Color(0xff757477), 2),
                                    colorIndicator(const Color(0xff29282C), 3),
                                    colorIndicator(const Color(0xffECE9DA), 4),
                                  ],
                                ),
                                AnimatedContainer(
                                  duration: const Duration(milliseconds: 250),
                                  width: 40,
                                  height: 40,
                                  margin: EdgeInsets.only(
                                    left: indicatorMargin,
                                  ),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: indicatorColor,
                                    border: Border.all(
                                        width: 3, color: kWhiteColor),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Bringing new life to an old favourite. We first introduced this chair in the 1950’s. Some 60 years later we brought it back into the range with the same craftsmanship, comfort and appearance. Enjoy!',
                            style: greyTextStyle.copyWith(
                              fontWeight: semiBold,
                              fontSize: 14,
                              height: 1.5,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Bringing new life to an old favourite. We first introduced this chair in the 1950’s. Some 60 years later we brought it back into the range with the same craftsmanship, comfort and appearance. Enjoy!',
                            style: greyTextStyle.copyWith(
                              fontWeight: semiBold,
                              fontSize: 14,
                              height: 1.5,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Bringing new life to an old favourite. We first introduced this chair in the 1950’s. Some 60 years later we brought it back into the range with the same craftsmanship, comfort and appearance. Enjoy!',
                            style: greyTextStyle.copyWith(
                              fontWeight: semiBold,
                              fontSize: 14,
                              height: 1.5,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Bringing new life to an old favourite. We first introduced this chair in the 1950’s. Some 60 years later we brought it back into the range with the same craftsmanship, comfort and appearance. Enjoy!',
                            style: greyTextStyle.copyWith(
                              fontWeight: semiBold,
                              fontSize: 14,
                              height: 1.5,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Bringing new life to an old favourite. We first introduced this chair in the 1950’s. Some 60 years later we brought it back into the range with the same craftsmanship, comfort and appearance. Enjoy!',
                            style: greyTextStyle.copyWith(
                              fontWeight: semiBold,
                              fontSize: 14,
                              height: 1.5,
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          isShowReview
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Review',
                                      style: blackTextStyle.copyWith(
                                        fontSize: 24,
                                        fontWeight: semiBold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const ReviewItem(
                                      imageUrl: 'assets/image_reviewer1.png',
                                      name: 'Joko Samudra',
                                      description:
                                          'Open repair of infrarenal aortic aneurysm or dissection, plus of a repair of associated arterial..',
                                      items: [
                                        'assets/image_product_list1.png',
                                        'assets/image_product_list2.png',
                                        'assets/image_product_list3.png',
                                      ],
                                    ),
                                    const ReviewItem(
                                      imageUrl: 'assets/image_reviewer2.png',
                                      name: 'Audra Still',
                                      description:
                                          'Open repair of infrarenal aortic aneurysm or dissection, plus of a repair of associated arterial..',
                                      items: [
                                        'assets/image_product_list1.png',
                                        'assets/image_product_list3.png',
                                      ],
                                    ),
                                    const ReviewItem(
                                      imageUrl: 'assets/image_reviewer3.png',
                                      name: 'Joan Gray',
                                      description:
                                          'Open repair of infrarenal aortic aneurysm or dissection, plus of a repair of associated arterial..',
                                      items: [
                                        'assets/image_product_list2.png',
                                        'assets/image_product_list3.png',
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                  ],
                                )
                              : SizedBox(),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: isShowReview
          ? null
          : isExpand
              ? Container(
                  height: 211,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        kWhiteColor.withOpacity(0.5),
                        kWhiteColor,
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            isShowReview = true;
                          });
                        },
                        child: Text(
                          'See More',
                          style: blueTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                    ],
                  ),
                )
              : Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: kWhiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: kBlackColor.withOpacity(0.15),
                        blurRadius: 30,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 56,
                        height: 56,
                        margin: const EdgeInsets.only(right: 16),
                        decoration: BoxDecoration(
                          color: kWhiteGreyColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/icon_cart.png',
                            width: 24,
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: kBlackColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                            child: Text(
                              'Buy Now',
                              style: whiteTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: semiBold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
    );
  }

  Widget colorIndicator(Color color, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          indicatorColor = color;
          indicatorMargin = 5 + (index * 70);
          currentIndex = index + 1;
        });
      },
      child: Container(
        width: 50,
        height: 50,
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

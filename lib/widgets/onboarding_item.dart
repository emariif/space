import 'package:flutter/material.dart';

import '../theme.dart';

class OnboardingItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;

  const OnboardingItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 99,
        ),
        Image.asset(imageUrl),
        const SizedBox(
          height: 127,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Text(
                title,
                style: blackTextStyle.copyWith(fontSize: 26),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                subTitle,
                style: greyTextStyle.copyWith(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

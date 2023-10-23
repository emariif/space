import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class ProfileMenuItem extends StatelessWidget {
  final String iconUrl;
  final String title;

  const ProfileMenuItem({
    Key? key,
    required this.iconUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 30,
      ),
      child: Row(
        children: [
          Image.asset(
            iconUrl,
            width: 24,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: blackAccentTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold
            ),
          ),
          const Spacer(),
          Icon(
            Icons.chevron_right,
            color: kGreyColor,
          ),
        ],
      ),
    );
  }
}

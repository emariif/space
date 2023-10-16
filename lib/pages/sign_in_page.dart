import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          title(),
          emailInput(),
          passwordInput(),
          rememberCheckbox(),
          loginButton(),
        ],
      ),
    );
  }

  Widget title() {
    return Container(
      margin: const EdgeInsets.only(top: 84),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login to your\naccount',
            style: blackAccentTextStyle.copyWith(
              fontSize: 24,
              fontWeight: bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                width: 84,
                height: 4,
                margin: const EdgeInsets.only(right: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: kBlackColor,
                ),
              ),
              Container(
                width: 8,
                height: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: kBlackColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget emailInput() {
    return Container(
      margin: const EdgeInsets.only(top: 48),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: kWhiteGreyColor, borderRadius: BorderRadius.circular(14)),
      child: TextFormField(
        decoration: InputDecoration.collapsed(
          hintText: 'Email',
          hintStyle: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }

  Widget passwordInput() {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: kWhiteGreyColor, borderRadius: BorderRadius.circular(14)),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration.collapsed(
                hintText: 'Password',
                hintStyle: greyTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),
          ),
          Icon(
            Icons.visibility_outlined,
            color: kGreyColor,
          )
        ],
      ),
    );
  }

  Widget rememberCheckbox() {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      child: Row(
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: Checkbox(
              value: false,
              onChanged: (value) {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          const Text('Remember me'),
        ],
      ),
    );
  }

  Widget loginButton() {
    return Container(
      // height: 56,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 32),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: kBlackAccentColor,
          padding: const EdgeInsets.symmetric(vertical: 15.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: Text(
          'Login',
          style: whiteTextStyle.copyWith(
            color: kWhiteColor,
            fontSize: 18,
            fontWeight: semiBold
          ),
        ),
      ),
    );
  }
}

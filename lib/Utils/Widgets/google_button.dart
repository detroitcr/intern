import 'package:flutter/material.dart';

import '../assets.dart';
import '../colors.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: CustomColor.googleButtonColor,
        border: Border.all(
          color: Colors.blue,
        ),
      ),
      height: 40,
      width: 150,
      child: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 15),
          Image.asset(Assets.google),
          const SizedBox(
            width: 10,
          ),
          const Text("Google")
        ],
      ),
    );
  }
}

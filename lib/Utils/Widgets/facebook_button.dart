import 'package:flutter/material.dart';

import '../assets.dart';
import '../colors.dart';

class FacebookButton extends StatelessWidget {
  const FacebookButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: CustomColor.facebookButtonColor,
        border: Border.all(
          color: Colors.white,
        ),
      ),
      child: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 15),
          Image.asset(Assets.fb),
          SizedBox(
            width: 10,
          ),
          Text("Facebook",style: TextStyle(color: Colors.white,),)
        ],
      ),
      height: 40,
      width: 160,
    );
  }
}


import 'package:flutter/material.dart';
import 'package:phoneauth/Utils/colors.dart';

class LineIconWidget extends StatelessWidget {
  const LineIconWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 5,
            width: 140,
            color: CustomColor.clipperColor,
          ),
          Icon(
            Icons.arrow_downward,
            color: CustomColor.clipperColor,
          ),
          Container(
            height: 5,
            width: 150,
            color: CustomColor.clipperColor,
          ),
        ],
      ),
    );
  }
}

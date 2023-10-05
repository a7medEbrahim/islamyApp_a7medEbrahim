import 'package:flutter/material.dart';
import 'package:islamyapp/MyThemeData.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(image: AssetImage('assets/images/radio_image.png')),
        SizedBox(
          height: 50,
        ),
        Text('إذاعة القرآن الكريم'),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ImageIcon(
              AssetImage('assets/images/Icon metro-next.png'),
              color: MyThemeData.primaryColor,
              size: 50,
            ),
            ImageIcon(
              AssetImage('assets/images/Icon awesome-play.png'),
              color: MyThemeData.primaryColor,
              size: 50,
            ),
            ImageIcon(
              AssetImage('assets/images/Icon metro-back.png'),
              color: MyThemeData.primaryColor,
              size: 50,
            ),
          ],
        )
      ],
    );
  }
}

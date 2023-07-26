import 'package:flutter/material.dart';

import '../utils/constants.dart';

class MyInformation extends StatelessWidget {
  const MyInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        color: const Color(0XFF242430),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(flex: 2,),
            CircleAvatar(
                radius: 50,
                backgroundColor: bgColor,
                backgroundImage: AssetImage('assets/images/victor_profile_image.png')
            ),
            Spacer(),
            Text(
              'Victor Ebuka',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              'Android & Flutter developer. Co-founder of iQuest.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w200,
                  height: 1.5,
                  color: bodyTextColor
              ),
            ),
            Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}

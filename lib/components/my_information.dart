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
        color: secondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(flex: 2,),
            CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white24,
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
              'Android & Flutter developer.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w100,
                  height: 1.5,
                  fontSize: 12,
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

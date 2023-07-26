import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'animated_progress_indicator.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(color: bodyTextColor,thickness: 0.2,),
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Skills",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AnimatedProgressIndicator(
                  percentage: 0.8,
                  label: "Flutter"),
            ),
            SizedBox(width: defaultPadding,),
            Expanded(
              child: AnimatedProgressIndicator(
                  percentage: 0.88,
                  label: "Java & Kotlin"),
            ),
            SizedBox(width: defaultPadding,),
            Expanded(
              child: AnimatedProgressIndicator(
                  percentage: 0.90,
                  label: "Firebase"),
            ),
          ],
        )
      ],
    );
  }
}
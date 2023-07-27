import 'package:flutter/material.dart';
import '../utils/constants.dart';
import 'animated_linear_progress_indicator.dart';

class CodingWidget extends StatelessWidget {
  const CodingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(color: bodyTextColor,thickness: 0.2,),
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.79,
          title: "Dart",
        ),
        SizedBox(height: defaultPadding,),
        AnimatedLinearProgressIndicator(
          percentage: 0.87,
          title: "Java",
        ),
        SizedBox(height: defaultPadding,),
        AnimatedLinearProgressIndicator(
          percentage: 0.81,
          title: "Kotlin",
        ),
        SizedBox(height: defaultPadding,),
        AnimatedLinearProgressIndicator(
          percentage: 0.55,
          title: "JavaScript",
        ),
      ],
    );
  }
}
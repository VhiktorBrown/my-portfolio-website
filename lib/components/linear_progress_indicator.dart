import 'package:flutter/material.dart';

import '../utils/constants.dart';

class LinearProIndicator extends StatelessWidget {
  const LinearProIndicator({
    Key? key,
    required this.percentage,
    required this.title,
    required this.percentLabel,
  }) : super(key: key);

  final double percentage;
  final String title;
  final String percentLabel;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: defaultDuration,
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  percentLabel,
                  style: const TextStyle(
                    color: bodyTextColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            LinearProgressIndicator(
              value: percentage,
              color: primaryColor,
              backgroundColor: darkColor,
            )
          ],
        )
    );
  }
}

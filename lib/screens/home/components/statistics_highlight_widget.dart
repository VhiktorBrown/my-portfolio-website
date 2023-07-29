import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../responsive.dart';
import '../../../utils/constants.dart';
class StatisticsHighlightWidget extends StatelessWidget {
  const StatisticsHighlightWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context) ?
      const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StatisticsHighlightItem(
                animatedCounter: AnimatedCounter(value: 1000, text: "+"),
                label: "Followers",
              ),
              StatisticsHighlightItem(
                animatedCounter: AnimatedCounter(value: 5, text: "",),
                label: "Live Projects",
              ),
            ],
          ),
          SizedBox(height: defaultPadding,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StatisticsHighlightItem(
                animatedCounter: AnimatedCounter(value: 40, text: "+"),
                label: "Github projects",
              ),
              StatisticsHighlightItem(
                animatedCounter: AnimatedCounter(value: 51, text: "+"),
                label: "Stars earned",
              ),
            ],
          )
        ],
      ) : Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          StatisticsHighlightItem(
            animatedCounter: AnimatedCounter(value: 1000, text: "+"),
            label: "Followers",
          ),
          StatisticsHighlightItem(
            animatedCounter: AnimatedCounter(value: 5, text: "",),
            label: "Live Projects",
          ),
          StatisticsHighlightItem(
            animatedCounter: AnimatedCounter(value: 40, text: "+"),
            label: "Github projects",
          ),
          StatisticsHighlightItem(
            animatedCounter: AnimatedCounter(value: 51, text: "+"),
            label: "Stars earned",
          ),
        ],
      ),
    );
  }
}



class StatisticsHighlightItem extends StatelessWidget {
  const StatisticsHighlightItem({
    Key? key,
    required this.animatedCounter,
    required this.label,
  }) : super(key: key);

  final Widget animatedCounter;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        animatedCounter,
        const SizedBox(width: defaultPadding/3,),
        Text(
          label,
          style: GoogleFonts.poppins(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}



class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({Key? key, required this.value, this.text}) : super(key: key);
  final String? text;
  final int value;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 0, end: value),
      duration: defaultDuration,
      builder: (context, value, child) => Text(
        "$value$text",
        style: const TextStyle(
            color: darkColor,
            fontSize: 14
        ),
      ),
    );
  }
}


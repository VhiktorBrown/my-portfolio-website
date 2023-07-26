import 'package:flutter/material.dart';
import '../utils/constants.dart';

class AnimatedProgressIndicator extends StatelessWidget {
  const AnimatedProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: percentage),
              duration: defaultDuration,
              builder: (context, double value, child) =>
                  Stack(
                    fit: StackFit.expand,
                    children: [
                      CircularProgressIndicator(
                        value: value,
                        color: primaryColor,
                        backgroundColor: darkColor,
                      ),
                      Center(
                        child: Text(
                          "${(value * 100).toInt()}%",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  )
          ),
        ),
        const SizedBox(height: defaultPadding / 2,),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}

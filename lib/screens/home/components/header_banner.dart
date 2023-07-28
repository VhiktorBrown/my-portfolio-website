import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/constants.dart';
class HeaderBanner extends StatelessWidget {
  const HeaderBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/bg_image.jpg', fit: BoxFit.cover,),
          Container(color: darkColor.withOpacity(0.66),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "The only real limitations we have are\nthe ones we lay in our minds.",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold
                  ),
                ),
                const IBuildAnimatedTextWidget(),
                const SizedBox(height: defaultPadding,),
                ElevatedButton(
                    onPressed: (){},
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding * 2,
                          vertical: defaultPadding),
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5), // Adjust the value to control corner radius
                      ),
                    ),
                    child: Text(
                      "EXPLORE NOW",
                      style: GoogleFonts.poppins(
                          color: darkColor,
                          fontWeight: FontWeight.w600
                      ),
                    )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class IBuildAnimatedTextWidget extends StatelessWidget {
  const IBuildAnimatedTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
        style: GoogleFonts.poppins(
          fontSize: 16,
          color: Colors.white,
        ),
        child: Row(
          children: [
            const TaggedTextWidget(text: "Android"),
            const SizedBox(width: defaultPadding / 2,),
            const Text("I build "),
            AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText("scalable Native Android apps", speed: const Duration(milliseconds: 60)),
                  TyperAnimatedText("Android & iOS apps with Flutter", speed: const Duration(milliseconds: 60))
                ]
            ),
            const SizedBox(width: defaultPadding / 2,),
            const TaggedTextWidget(text: "iOS"),
          ],
        )
    );
  }
}


class TaggedTextWidget extends StatelessWidget {
  const TaggedTextWidget({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
        TextSpan(
            text: "<",
            style: const TextStyle(color: Colors.white),
            children: [
              TextSpan(
                  text: text,
                  style: const TextStyle(color: primaryColor)
              ),
              const TextSpan(text: ">", style: TextStyle(color: Colors.white),),
            ]
        )
    );
  }
}

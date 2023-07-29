import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../responsive.dart';
import '../../../utils/constants.dart';
class HeaderBanner extends StatelessWidget {
  const HeaderBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.4 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/bg_image.jpg', fit: BoxFit.cover,),
          Container(color: secondaryColor.withOpacity(0.2),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "The only real limitations we have are\nthe ones we lay in our minds.",
                  style: Responsive.isDesktop(context) ? TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold
                  ) : TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
                if(Responsive.isMobileLarge(context))
                  const SizedBox(height: defaultPadding/2,),
                const IBuildAnimatedTextWidget(),
                const SizedBox(height: defaultPadding,),
                if(!Responsive.isMobileLarge(context))
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
                            color: const Color(0XFFFFFFFF),
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
          fontSize: !Responsive.isMobileLarge(context) ? 16 : 12,
          color: Colors.white,
        ),
        child: Row(
          children: [
            if(!Responsive.isMobileLarge(context))
              const TaggedTextWidget(text: "Android"),
            if(!Responsive.isMobileLarge(context))
              const SizedBox(width: defaultPadding / 2,),
            const Text("I build "),
            AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText("scalable Native Android apps", speed: const Duration(milliseconds: 60)),
                  TyperAnimatedText("Android & iOS apps with Flutter", speed: const Duration(milliseconds: 60))
                ]
            ),
            const SizedBox(width: defaultPadding / 2,),
            if(!Responsive.isMobileLarge(context))
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
                  style: const TextStyle(color: darkColor)
              ),
              const TextSpan(text: ">", style: TextStyle(color: Colors.white),),
            ]
        )
    );
  }
}

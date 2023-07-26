import 'package:flutter/material.dart';
import 'package:victors_portfolio/components/my_information.dart';

import '../utils/constants.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: bgColor,
      child: Column(
        children: [
          MyInformation(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InfoTextSubTitle(title: "Country", text: "Nigeria",),
                  InfoTextSubTitle(title: "City", text: "Lagos",),
                  InfoTextSubTitle(title: "Phone", text: "08167945270",),
                  InfoTextSubTitle(title: "Email", text: "theelitedevelopers1",),
                  Divider(color: bodyTextColor,),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                      "Skills",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class InfoTextSubTitle extends StatelessWidget {
  const InfoTextSubTitle({
    Key? key,
    this.title,
    this.text,
  }) : super(key: key);

  final String? title;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: const TextStyle(
                color: Colors.white
            ),
          ),
          Text(
            text!,
            style: const TextStyle(
                color: bodyTextColor
            ),
          )
        ],
      ),
    );
  }
}


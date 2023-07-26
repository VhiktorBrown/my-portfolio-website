import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:victors_portfolio/components/linear_progress_indicator.dart';
import 'package:victors_portfolio/components/my_information.dart';
import 'package:victors_portfolio/components/skills_widget.dart';

import '../utils/constants.dart';
import 'animated_progress_indicator.dart';

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
                children: [
                  InfoTextSubTitle(title: "Country", text: "Nigeria",),
                  InfoTextSubTitle(title: "City", text: "Lagos",),
                  InfoTextSubTitle(title: "Phone", text: "08167945270",),
                  InfoTextSubTitle(title: "Email", text: "theelitedevelopers1",),
                  SkillsWidget(),
                  SizedBox(height: defaultPadding),
                  CodingWidget(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

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
        LinearProIndicator(
          percentage: 0.79,
          title: "Dart",
          percentLabel: "79%",
        ),
        SizedBox(height: defaultPadding,),
        LinearProIndicator(
          percentage: 0.87,
          title: "Java",
          percentLabel: "87%",
        ),
        SizedBox(height: defaultPadding,),
        LinearProIndicator(
          percentage: 0.81,
          title: "Kotlin",
          percentLabel: "81%",
        ),
        SizedBox(height: defaultPadding,),
        LinearProIndicator(
          percentage: 0.55,
          title: "JavaScript",
          percentLabel: "55%",
        ),
      ],
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


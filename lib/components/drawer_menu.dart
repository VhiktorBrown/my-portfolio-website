import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:victors_portfolio/components/knowledge_widget.dart';
import 'package:victors_portfolio/components/my_information.dart';
import 'package:victors_portfolio/components/skills_widget.dart';
import 'package:victors_portfolio/components/coding_widget.dart';
import '../utils/constants.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: bgColor,
      surfaceTintColor: bgColor,
      child: Column(
        children: [
          const MyInformation(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  const InfoTextSubTitle(title: "Country", text: "Nigeria",),
                  const InfoTextSubTitle(title: "City", text: "Lagos",),
                  const InfoTextSubTitle(title: "Phone", text: "08167945270",),
                  const InfoTextSubTitle(title: "Email", text: "theelitedevelopers1",),
                  const SkillsWidget(),
                  const SizedBox(height: defaultPadding),
                  const CodingWidget(),
                  SizedBox(height: defaultPadding,),
                  KnowledgeWidget(),
                  SizedBox(height: defaultPadding,),
                  Divider(color: bodyTextColor,thickness: 0.2,),
                  SizedBox(height: defaultPadding/2,),
                  TextButton(
                      onPressed: (){},
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: const TextStyle(
                                color: bodyTextColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: defaultPadding / 2,),
                            Icon(
                              AntDesign.download,
                              color: bodyTextColor,
                              size: 16,
                            )
                          ],
                        ),
                      )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: defaultPadding / 2),
                    color: secondaryColor,
                    child: Row(
                      children: [
                        Spacer(),
                        IconButton(
                            onPressed: (){},
                            icon: Icon(
                              AntDesign.linkedin_square,
                              color: bodyTextColor,
                            )
                        ),
                        IconButton(
                            onPressed: (){},
                            icon: Icon(
                              AntDesign.github,
                              color: bodyTextColor,
                            )
                        ),
                        IconButton(
                            onPressed: (){},
                            icon: Icon(
                              AntDesign.twitter,
                              color: bodyTextColor,
                            )
                        ),
                        IconButton(
                            onPressed: (){},
                            icon: Icon(
                              AntDesign.medium_wordmark,
                              color: bodyTextColor,
                            )
                        ),
                        Spacer(),
                      ],
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


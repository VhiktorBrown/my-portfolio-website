import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
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
                  const InfoTextSubTitle(title: "City", text: "Anambra",),
                  const InfoTextSubTitle(title: "Phone", text: "Text Me", clickable: true,),
                  const InfoTextSubTitle(title: "Email", text: "Email Me", clickable: true,),
                  const SkillsWidget(),
                  const SizedBox(height: defaultPadding),
                  const CodingWidget(),
                  SizedBox(height: defaultPadding,),
                  KnowledgeWidget(),
                  SizedBox(height: defaultPadding,),
                  Divider(color: bodyTextColor,thickness: 0.2,),
                  SizedBox(height: defaultPadding/2,),
                  TextButton(
                      onPressed: () async{
                        await launchUrl(Uri.parse("https://docs.google.com/document/d/1sokexZHdS5tafKX3qKII4l366Mc6In99rR57T7DpggQ/edit?usp=drivesdk"));
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "VIEW RESUME",
                              style: const TextStyle(
                                color: bodyTextColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: defaultPadding / 2,),
                            Icon(
                              AntDesign.eye,
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
                            onPressed: () async{
                              await launchUrl(Uri.parse("https://www.linkedin.com/in/chukwujekwu-ebuka-9191a9239"));
                            },
                            icon: Icon(
                              AntDesign.linkedin_square,
                              color: bodyTextColor,
                            )
                        ),
                        IconButton(
                            onPressed: () async{
                              await launchUrl(Uri.parse("https://github.com/VhiktorBrown"));
                            },
                            icon: Icon(
                              AntDesign.github,
                              color: bodyTextColor,
                            )
                        ),
                        IconButton(
                            onPressed: () async{
                              await launchUrl(Uri.parse("https://twitter.com/victorrebuka"));
                            },
                            icon: Icon(
                              AntDesign.twitter,
                              color: bodyTextColor,
                            )
                        ),
                        IconButton(
                            onPressed: () async{
                              await launchUrl(Uri.parse("https://medium.com/@victorrebuka"));
                            },
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
    this.clickable,
  }) : super(key: key);

  final String? title;
  final String? text;
  final bool? clickable;
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
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () async{
                if(clickable != null && clickable!){
                  if(title! == "Phone"){
                    await launchUrl(Uri.parse("https://wa.link/isds05"));
                  }else if(title! == "Email"){
                    await launchUrl(
                        Uri(
                            scheme: 'mailto',
                            path: 'theelitedevelopers1@gmail.com'
                        )
                    );
                  }
                }
              },
              child: Text(
                text!,
                style: TextStyle(
                    color: bodyTextColor,
                    decoration: clickable != null && clickable! ? TextDecoration.underline : null,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


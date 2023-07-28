import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';

import '../utils/constants.dart';

class KnowledgeWidget extends StatelessWidget {
  const KnowledgeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(color: bodyTextColor,thickness: 0.2,),
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Knowledge",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        KnowledgeItem(text: "Flutter, Dart"),
        KnowledgeItem(text: "Android SDK, Java, Kotlin"),
        KnowledgeItem(text: "State Management - Provider, Bloc, GetX"),
        KnowledgeItem(text: "Dagger2, DaggerHilt, MVVM"),
        KnowledgeItem(text: "Jetpack Libraries, Android Lifecycle"),
        KnowledgeItem(text: "SQL, Firebase services"),
        KnowledgeItem(text: "REST API services"),
        KnowledgeItem(text: "OneSignal Push Notification & FCM"),
      ],
    );
  }
}


class KnowledgeItem extends StatelessWidget {
  const KnowledgeItem({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          const Icon(
            AntDesign.check,
            color: primaryColor,
            size: 14,
          ),
          const SizedBox(width: defaultPadding/2,),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                color: bodyTextColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

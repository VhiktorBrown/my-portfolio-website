import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:victors_portfolio/models/project.dart';
import 'package:victors_portfolio/screens/home/components/header_banner.dart';
import 'package:victors_portfolio/screens/home/components/statistics_highlight_widget.dart';
import 'package:victors_portfolio/screens/main_screen.dart';
import 'package:victors_portfolio/utils/constants.dart';

import 'components/my_projects_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
        children: [
          HeaderBanner(),
          StatisticsHighlightWidget(),
          MyProjectsWidget(),
        ]
    );
  }
}




import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:victors_portfolio/models/recommendation.dart';
import 'package:victors_portfolio/screens/home/components/header_banner.dart';
import 'package:victors_portfolio/screens/home/components/statistics_highlight_widget.dart';
import 'package:victors_portfolio/screens/main_screen.dart';
import 'package:victors_portfolio/utils/constants.dart';

import 'components/my_projects_widget.dart';
import 'components/recommendations_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
        children: [
          HeaderBanner(),
          StatisticsHighlightWidget(),
          MyProjectsWidget(),
          RecommendationsWidget(),
        ]
    );
  }
}



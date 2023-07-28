import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../models/recommendation.dart';
import '../../../utils/constants.dart';

class RecommendationsWidget extends StatelessWidget {
  const RecommendationsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              "Recommendations",
              style: GoogleFonts.poppins(
                color: Colors.white,
              )
          ),
          const SizedBox(height: defaultPadding,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: List.generate(
                    recommendations.length,
                        (index) =>
                        Padding(
                          padding: const EdgeInsets.only(right: defaultPadding),
                          child: RecommendationCard(recommendation: recommendations[index]),
                        )
                )
            ),
          )
        ],
      ),
    );
  }
}


class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    Key? key,
    required this.recommendation,
  }) : super(key: key);
  final Recommendation recommendation;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recommendation.name!,
            style: GoogleFonts.poppins(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: defaultPadding/2,),
          Text(
            recommendation.position!,
            style: GoogleFonts.poppins(
              color: bodyTextColor,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: defaultPadding/2,),
          Text(
            recommendation.text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.poppins(
              color: bodyTextColor,
              height: 1.5,
            ),
          )
        ],
      ),
    );
  }
}
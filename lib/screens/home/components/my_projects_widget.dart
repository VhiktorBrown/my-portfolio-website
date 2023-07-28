import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_flutter/icons_flutter.dart';

import '../../../models/project.dart';
import '../../../utils/constants.dart';
class MyProjectsWidget extends StatelessWidget {
  const MyProjectsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Projects",
          style: GoogleFonts.poppins(
            color: Colors.white,
          ),
        ),
        const SizedBox(height: defaultPadding,),
        GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: demoProjects.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: defaultPadding,
                mainAxisSpacing: defaultPadding,
                childAspectRatio: 1.23
            ),
            itemBuilder: (context, index){
              return ProjectCard(project: demoProjects[index]);
            }
        )
      ],
    );
  }
}


class ProjectCard extends StatelessWidget {
  const ProjectCard({Key? key, required this.project}) : super(key: key);
  final Project project;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  project.title!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                  ),
                ),
              ),
              IconButton(
                  onPressed: (){},
                  icon: project.iconPath == "" ?
                  IconButton(
                      onPressed: (){},
                      icon: const Icon(
                        AntDesign.github,
                        color: darkColor,
                        size: 24,
                      )
                  ) :
                  SvgPicture.asset(project.iconPath!,
                    colorFilter: const ColorFilter.mode(darkColor, BlendMode.srcIn),
                    width: 24,
                    height: 24,
                  )
              )
            ],
          ),
          const SizedBox(height: defaultPadding,),
          Text(
            project.description!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.poppins(
              color: bodyTextColor,
              height: 1.5,
              fontSize: 12,
            ),
          ),
          const Spacer(),
          TextButton(
            onPressed: (){},
            child: Text(
              "Read More >>",
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                color: darkColor,
              ),
            ),
          ),
          const SizedBox(height: defaultPadding/3,),
        ],
      ),
    );
  }
}

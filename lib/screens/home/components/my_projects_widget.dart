import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:victors_portfolio/responsive.dart';
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
        Responsive(
            mobile: ProjectsGridView(crossAxisCount: 1, aspectRatio: 1.5,),
            mobileLarge: ProjectsGridView(crossAxisCount: 2, aspectRatio: 1.1,),
            tablet: ProjectsGridView(aspectRatio: 0.95,),
            desktop: ProjectsGridView()
        )
      ],
    );
  }
}


class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.aspectRatio = 1.1
  }) : super(key: key);

  final int? crossAxisCount;
  final double? aspectRatio;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: demoProjects.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount!,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding,
            childAspectRatio: aspectRatio!
        ),
        itemBuilder: (context, index){
          return ProjectCard(project: demoProjects[index]);
        }
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
        mainAxisAlignment: MainAxisAlignment.center,
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
                      onPressed: () async {
                       await launchUrl(Uri.parse(project.link!));
                      },
                      icon: const Icon(
                        AntDesign.github,
                        color: darkColor,
                        size: 24,
                      )
                  ) :
                  GestureDetector(
                    onTap: () async{
                      await launchUrl(Uri.parse(project.link!));
                    },
                    child: SvgPicture.asset(project.iconPath!,
                      colorFilter: const ColorFilter.mode(darkColor, BlendMode.srcIn),
                      width: 24,
                      height: 24,
                    ),
                  )
              )
            ],
          ),
          const SizedBox(height: defaultPadding/2,),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.poppins(
              color: bodyTextColor,
              height: 1.5,
              fontSize: 12,
            ),
          ),
          const Spacer(),
          TextButton(
            onPressed: () async {
              await launchUrl(Uri.parse(project.link!));
            },
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

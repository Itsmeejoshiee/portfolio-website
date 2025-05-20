import 'package:flutter/material.dart';
import 'package:portfolio_website/core/widgets/projects_card.dart';
import 'package:portfolio_website/responsive_view/responsive_layout.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileView: Placeholder(),
      desktopView: Column(
        children: [
          ProjectsCard(
            imagePath: "assets/projects/Trashtrackr.png",
            appName: "TrashTrackr",
            appColor: const Color(0xFFE6E6B0),
          ),
        ],
      ),
    );
  }
}

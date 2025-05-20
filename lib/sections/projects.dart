import 'package:flutter/material.dart';
import 'package:portfolio_website/core/theme.dart';
import 'package:portfolio_website/core/widgets/projects_card.dart';
import 'package:portfolio_website/responsive_view/responsive_layout.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return ResponsiveLayout(
      mobileView: Placeholder(),
      desktopView: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Projects", style: poppinsH2),
          const SizedBox(height: 20),
          Column(
            children: [
              ProjectsCard(
                imagePath: "assets/projects/Trashtrackr.png",
                appName: "TrashTrackr",
                appDescription:
                    "TrashTrackr simplifies waste sorting with AI and image recognition. Just scan and dispose.",
                appColor: Color(0xFF628307),
              ),
            ],
          ),
          Column(),
        ],
      ),
    );
  }
}

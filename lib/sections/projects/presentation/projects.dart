import 'package:flutter/material.dart';
import 'package:portfolio_website/core/theme.dart';
import 'package:portfolio_website/sections/projects/widgets/projects_card.dart';
import 'package:portfolio_website/core/widgets/responsive_layout.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Featured Projects", style: poppinsH2),
        const SizedBox(height: 20),
        Wrap(
          direction: Axis.horizontal,
          spacing: 15,
          runSpacing: 15,
          children: [
            ProjectsCard(
              imagePath: "assets/projects/trashtrackr.png",
              appName: screenWidth < 600 ? "Trash\nTrackr" : "TrashTrackr",
              appDescription:
                  "TrashTrackr simplifies waste sorting with AI. Just scan and sort!",
              appColor: Color(0xFF628307),
            ),
            ProjectsCard(
              imagePath: "assets/projects/a11y.png",
              appName: "A11y",
              appDescription:
                  "A11y gamifies accessibility training with real-life design scenarios.",
              appColor: Color(0xFF3A77BD),
            ),
            ProjectsCard(
              imagePath: "assets/projects/twist_bloom.png",
              appName: "Twist & Bloom",
              appDescription: "Ecommerce platform for Twist & Bloom",
              appColor: Color(0xFFff92b2),
            ),
          ],
        ),
      ],
    );
  }
}

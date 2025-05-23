import 'package:flutter/material.dart';
import 'package:portfolio_website/core/theme.dart';
import 'package:portfolio_website/sections/tech/widget/tech_card.dart';

class TechSection extends StatelessWidget {
  const TechSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Technical Stack", style: poppinsH2),
        SizedBox(height: 20),
        Wrap(
          direction: Axis.horizontal,
          spacing: 15,
          runSpacing: 15,
          children: [
            TechCard(
              techName: "Flutter",
              techImage: "assets/tech_stack/flutter_icon.png",
            ),
            TechCard(
              techName: "Firebase",
              techImage: "assets/tech_stack/firebase_icon.png",
            ),
            TechCard(
              techName: "Supabase",
              techImage: "assets/tech_stack/supabase_icon.png",
            ),
            TechCard(
              techName: "Git",
              techImage: "assets/tech_stack/git_icon.png",
            ),
            TechCard(
              techName: "Notion",
              techImage: "assets/tech_stack/notion_icon.png",
            ),
          ],
        ),
      ],
    );
  }
}

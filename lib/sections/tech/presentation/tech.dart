import 'package:flutter/material.dart';
import 'package:portfolio_website/core/theme.dart';
import 'package:portfolio_website/responsive_view/responsive_layout.dart';
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
          children: [
            TechCard(
              techName: "Flutter",
              techImage: "assets/tech_stack/flutter_icon.png",
            ),
          ],
        ),
      ],
    );
  }
}

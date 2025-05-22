import 'package:flutter/material.dart';
import 'package:portfolio_website/core/theme.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          Column(
            children: [
              Text('Built with Flutter, with LUV!', style: poppinsBody),
              Text(
                '© 2023 Josh Gorospe. All rights reserved.',
                style: poppinsBody,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

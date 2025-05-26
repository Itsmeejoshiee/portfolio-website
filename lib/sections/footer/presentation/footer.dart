import 'package:flutter/material.dart';
import 'package:portfolio_website/core/theme.dart';
import 'package:portfolio_website/core/utils/year_utils.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final YearUtils yearUtils = YearUtils();
    final currentYear = yearUtils.getCurrentYear();

    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Text('Built with Flutter, with LUV!', style: poppinsBody),
          Text(
            '© $currentYear Josh Gorospe. All rights reserved.',
            style: poppinsBody,
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

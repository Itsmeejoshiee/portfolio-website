import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:portfolio_website/core/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/core/widgets/primary_button.dart';
import 'package:portfolio_website/core/widgets/secondary_button.dart';
import 'package:portfolio_website/sections/experience/presentation/experience.dart';
import 'package:portfolio_website/sections/footer/presentation/footer.dart';
import 'package:portfolio_website/sections/landing/presentation/landing.dart';
import 'package:portfolio_website/sections/projects/presentation/projects.dart';
import 'package:portfolio_website/sections/tech/presentation/tech.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
              child: AppBar(
                scrolledUnderElevation: 0,
                elevation: 0,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'itsmeejoshie',
                      style: ralewayBody.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                backgroundColor: Colors.transparent,
              ),
            ),
          ),
        ),
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth > 1060 ? 80 : 20,
            ),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                LandingSection(),
                SizedBox(height: 50),
                ExperienceSection(),
                SizedBox(height: 50),
                ProjectSection(),
                SizedBox(height: 50),
                TechSection(),
                SizedBox(height: 100),
                FooterSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

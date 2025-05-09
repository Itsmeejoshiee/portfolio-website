import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/core/theme.dart';
import 'package:portfolio_website/core/widgets/primary_button.dart';
import 'package:portfolio_website/core/widgets/secondary_button.dart';

class LandingSection extends StatelessWidget {
  const LandingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 100),
                Text("Hi! I'm Josh Gorospe", style: poppinsH1),
                Text("Software Engineer & Community Builder", style: poppinsH3),
                SizedBox(height: 10),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 600),
                  child: Text(
                    "I specialize in mobile app development with Flutter and Dart, crafting fast and seamless cross-platform apps. I'm currently expanding my expertise in native Android Development with Kotlin to deliver even more refined mobile experiences.",
                    style: poppinsBody,
                  ),
                ),
                SizedBox(height: 20),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 600),
                  child: Text(
                    "Beyond writing code, I'm deeply passionate about community building and sharing knowledge. I've led as a Google Developer Student Clubs Lead, currently serve as a Notion Campus Leader, and actively contribute as an officer at DEVCON Pampanga, where I help empower developers and create spaces for learning and growth.",
                    style: poppinsBody,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    PrimaryButton(
                      buttonName: 'Download Resume',
                      onPressed: () {},
                    ),
                    SizedBox(width: 20),
                    SecondaryButton(
                      buttonName: 'Reach Out To Me',
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(width: 10),
                    IconButton(
                      onPressed: () {},
                      icon: FaIcon(
                        FontAwesomeIcons.github,
                        color: textPrimaryColor,
                      ),
                    ),
                    SizedBox(width: 10),
                    IconButton(
                      onPressed: () {},
                      icon: FaIcon(
                        FontAwesomeIcons.linkedin,
                        color: textPrimaryColor,
                      ),
                    ),
                    SizedBox(width: 10),
                    IconButton(
                      onPressed: () {},
                      icon: FaIcon(
                        FontAwesomeIcons.instagram,
                        color: textPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: CircleAvatar(
              radius: 200,
              backgroundColor: cardBackgroundColor,
              child: Image.asset(
                'assets/itsmeejoshie.png',
                fit: BoxFit.cover,
                width: 400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

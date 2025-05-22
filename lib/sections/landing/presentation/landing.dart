import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/core/theme.dart';
import 'package:portfolio_website/core/widgets/primary_button.dart';
import 'package:portfolio_website/core/widgets/secondary_button.dart';
import 'package:portfolio_website/responsive_view/responsive_layout.dart';

class LandingSection extends StatelessWidget {
  const LandingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileView: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 150,
              backgroundColor: cardBackgroundColor,
              child: Image.asset(
                'assets/itsmeejoshie.png',
                fit: BoxFit.cover,
                width: 400,
              ),
            ),
            SizedBox(height: 20),
            Text("Hi! I'm Josh Gorospe", style: poppinsH3),
            SizedBox(height: 10),
            Text(
              "Software Engineer & Community Builder",
              style: poppinsH3.copyWith(fontSize: 35),
            ),
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
                "Beyond coding, I’m passionate about building communities and sharing knowledge. I strive to empower developers by creating spaces that foster learning, collaboration, and growth.",
                style: poppinsBody,
              ),
            ),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PrimaryButton(buttonName: 'Download Resume', onPressed: () {}),
                SizedBox(width: 20),
                SecondaryButton(
                  buttonName: 'Reach Out To Me',
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
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
      desktopView: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: SizedBox(
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
                    Text(
                      "Software Engineer & Community Builder",
                      style: poppinsH3,
                    ),
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
                        "Beyond coding, I’m passionate about building communities and sharing knowledge. I strive to empower developers by creating spaces that foster learning, collaboration, and growth.",
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
        ),
      ),
    );
  }
}

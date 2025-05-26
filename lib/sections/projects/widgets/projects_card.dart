import 'package:flutter/material.dart';
import 'package:portfolio_website/core/theme.dart';

class ProjectsCard extends StatelessWidget {
  final String imagePath;
  final String appName;
  final String appDescription;
  final Color appColor;
  final void Function()? onTap;

  const ProjectsCard({
    super.key,
    required this.imagePath,
    required this.appName,
    required this.appColor,
    required this.appDescription,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          height: 300,
          width: 550,
          child: Card(
            color: appColor,
            child: Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(appName, style: poppinsH3.copyWith(fontSize: 30)),
                        SizedBox(height: 10),
                        Text(
                          appDescription,
                          style: poppinsBody,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                ),
                if (screenWidth > 600)
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: SizedBox(
                      width: 260,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 20,
                            child: SizedBox(
                              width: 240,
                              child: Image.asset(imagePath, fit: BoxFit.cover),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                if (screenWidth <= 600)
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                        width: screenWidth * 0.4,
                        child: Image.asset(imagePath, fit: BoxFit.cover),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

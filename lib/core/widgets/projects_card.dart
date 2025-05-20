import 'package:flutter/material.dart';
import 'package:portfolio_website/core/theme.dart';

class ProjectsCard extends StatelessWidget {
  final String imagePath;
  final String appName;
  final String appDescription;
  final Color appColor;

  const ProjectsCard({
    super.key,
    required this.imagePath,
    required this.appName,
    required this.appColor,
    required this.appDescription,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 550,
      child: Card(
        color: appColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Flexible(
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
              SizedBox(
                width: 315,
                child: Image.asset(imagePath, fit: BoxFit.cover),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio_website/core/theme.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: Column(
            children: [
              Text('This is Heading 1', style: poppinsH1),
              SizedBox(height: 20),
              Text('This is Heading 2', style: poppinsH2),
              SizedBox(height: 20),
              Text('This is Heading 3', style: poppinsH3),
              SizedBox(height: 20),
              Text('This is Body Text', style: poppinsBody),
            ],
          ),
        ),
      ),
    );
  }
}

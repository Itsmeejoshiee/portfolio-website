import 'package:flutter/material.dart';
import 'package:portfolio_website/core/theme.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback onPressed;
  const PrimaryButton({
    super.key,
    required this.buttonName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFFFFFFF),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      child: Text(
        buttonName,
        style: poppinsBody.copyWith(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: textTertiaryColor,
        ),
      ),
    );
  }
}

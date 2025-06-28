import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key,
   required this.backgroundColor,
    required this.textColor,
     required this. title,
     this.borderRadius
     });

  final Color backgroundColor;
  final Color textColor;
  final String title;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        child: Text(
          title,
          style: Styles.titleSmall16.copyWith(
            fontWeight: FontWeight.w900,
            color: textColor,
          ),
        ),
      ),
    );
  }
}

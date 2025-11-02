import 'package:flutter/material.dart';

class OrSeparator extends StatelessWidget {
  final String text;
  final double thickness;
  final Color lineColor;
  final TextStyle? textStyle;

  const OrSeparator({
    super.key,
    this.text = "OR", // النص الافتراضي
    this.thickness = 1.0,
    this.lineColor = Colors.grey,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(thickness: thickness, color: lineColor)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            text,
            style:
                textStyle ??
                TextStyle(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
        Expanded(child: Divider(thickness: thickness, color: lineColor)),
      ],
    );
  }
}

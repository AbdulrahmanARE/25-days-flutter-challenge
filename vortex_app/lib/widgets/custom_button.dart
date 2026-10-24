import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color textColor;
  final Widget? icon;
  final double? width;
  final VoidCallback onPressed;
  final bool isOutlined;
  final Color? borderColor;

  const CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.width,
    this.backgroundColor = const Color(0xFFFFFFFF),
    this.textColor = Colors.black,
    this.icon,
    this.isOutlined = false,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 52,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: isOutlined ? Colors.transparent : backgroundColor,
          elevation: isOutlined ? 0 : 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: isOutlined
                ? BorderSide(color: borderColor ?? textColor, width: 1.5)
                : BorderSide.none,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[icon!, const SizedBox(width: 8)],
            Text(
              label,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

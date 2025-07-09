// widgets/custom_button.dart
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isOutlined;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? textColor;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.isOutlined = false,
    this.icon,
    this.backgroundColor,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: isOutlined
          ? OutlinedButton.icon(
              onPressed: onPressed,
              icon: icon != null ? Icon(icon) : const SizedBox.shrink(),
              label: Text(text),
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                    color: backgroundColor ?? Theme.of(context).primaryColor),
                foregroundColor: textColor ?? Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            )
          : ElevatedButton.icon(
              onPressed: onPressed,
              icon: icon != null ? Icon(icon) : const SizedBox.shrink(),
              label: Text(text),
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    backgroundColor ?? Theme.of(context).primaryColor,
                foregroundColor: textColor ?? Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
    );
  }
}

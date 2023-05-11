import 'package:b28_abduraimov_muhammadyusuf_exam_5/presentation/style/fonts.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String text;
  final void Function()? onPress;
  final bool isActive;
  const MenuItem({
    super.key,
    required this.text,
    this.onPress,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                color: isActive ? Colors.white : Colors.white.withOpacity(0.5),
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontFamily: Font.poppins.ts(),
              ),
            ),
            if (isActive) const SizedBox(height: 3),
            if (isActive)
              Container(
                width: 42,
                height: 3,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BbunInputfield extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;

  const BbunInputfield({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 321,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.50),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Label Text
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Text(
              labelText,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 10),
          // Input Field
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(left: 16, bottom: 2),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.50),
                borderRadius: BorderRadius.circular(22),
              ),
            ),
            child: TextFormField(
              cursorHeight: 18,
              cursorColor: Color(0xFFFFE24A),
              controller: controller,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(
                  color: Color(0xFFB6B6B6),
                  fontSize: 18,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
                border: InputBorder.none,
                isDense: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

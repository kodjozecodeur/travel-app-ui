import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyTextfield extends StatelessWidget {
  const MyTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: TextField(
        decoration: InputDecoration(
          // contentPadding:
          //     const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          hintText: "where do you wanna go?",
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
            child: SvgPicture.asset(
              'assets/icons/search.svg',
              width: 24,
              height: 24,
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
            child: SvgPicture.asset(
              'assets/icons/setting.svg',
              width: 24,
              height: 24,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: Colors.black),
          ),
        ),
      ),
    );
  }
}

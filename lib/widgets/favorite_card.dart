import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

class FavoriteCard extends StatelessWidget {
  const FavoriteCard(
      {super.key, required this.textPlace, required this.imagePath});
  final String textPlace;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 10),
      child: Container(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 10,
          bottom: 30,
        ),
        // margin: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 40),
        // width: 330,
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            //image
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(imagePath),
            ),
            //places name
            const SizedBox(
              height: 10,
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 5, bottom: 5),
                decoration: BoxDecoration(
                    color: const Color(0xFF000000).withOpacity(0.39),
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  textPlace,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            //map and desitination
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}

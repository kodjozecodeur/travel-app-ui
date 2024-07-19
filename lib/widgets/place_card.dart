import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 10),
      child: Container(
        padding: const EdgeInsets.all(30),
        // margin: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 40),
        width: 330,
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //image
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets/images/bosa.png'),
            ),
            //places name
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Bosa Sardina",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            //map and desitination
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/map.svg'),
                    //text
                    const SizedBox(
                      width: 5,
                    ),
                    const Text("Province of Oristano")
                  ],
                ),
                //star
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/star.svg'),
                    //text
                    const SizedBox(
                      width: 5,
                    ),
                    const Text("4.8")
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

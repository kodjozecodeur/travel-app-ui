import 'package:flutter/material.dart';
import 'package:travel_app_ui/widgets/countries_tiles.dart';
import 'package:travel_app_ui/widgets/favorite_card.dart';

import 'package:travel_app_ui/widgets/my_textfield.dart';
import 'package:travel_app_ui/widgets/place_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF8F8F8),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              ////textfield
              MyTextfield(),
              //countries
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    CountryTiles(
                      text: 'Venice',
                      bgColor: Color(0xFF000000),
                      textColor: Color(0xFFFFFFFF),
                    ),
                    SizedBox(width: 20),
                    CountryTiles(
                      text: 'Rome',
                      bgColor: Color(0xFFFFFFFF),
                      textColor: Color(0xFF000000),
                    ),
                    SizedBox(width: 20),
                    CountryTiles(
                      text: 'Florence',
                      bgColor: Color(0xFFFFFFFF),
                      textColor: Color(0xFF000000),
                    ),
                    SizedBox(width: 20),
                    CountryTiles(
                      text: 'Vienne',
                      bgColor: Color(0xFFFFFFFF),
                      textColor: Color(0xFF000000),
                    ),
                    SizedBox(width: 20),
                    CountryTiles(
                      text: 'Vienne',
                      bgColor: Color(0xFFFFFFFF),
                      textColor: Color(0xFF000000),
                    ),
                    SizedBox(width: 20),
                    CountryTiles(
                      text: 'Tokyo',
                      bgColor: Color(0xFFFFFFFF),
                      textColor: Color(0xFF000000),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //recommednd text
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  'Recommended',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //places slideshow
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    PlaceCard(),
                    PlaceCard(),
                    PlaceCard(),
                  ],
                ),
              ),
              //discover new location
              SizedBox(
                height: 15,
              ),
              //recommednd text
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  'Discover new locations',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              //location card
              SizedBox(
                height: 15,
              ),

              //favorite card
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FavoriteCard(
                      textPlace: 'Puglia',
                      imagePath: 'assets/images/cosa.png',
                    ),
                    FavoriteCard(
                      textPlace: 'Ravello',
                      imagePath: 'assets/images/ravello.png',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

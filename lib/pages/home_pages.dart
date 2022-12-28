import 'package:flutter/material.dart';
import 'package:snicil/component/recom_kategori.dart';
import 'package:snicil/theme.dart';

import '../component/items_kategori.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 15),
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/icons/menu.png",
                      width: 24,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Find Your\nPerfect Place!",
                      style: titleTextStyle.copyWith(
                        fontSize: 30,
                        fontWeight: semiBold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: const BorderSide(
                            width: 10,
                          ),
                          gapPadding: 10,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Find your dream home",
                        suffixIcon: Image.asset(
                          "assets/icons/search.png",
                          width: 29,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      ItemKategori(
                        title: "Modern House",
                        location: "Bandung",
                        image: "assets/images/modernHouse.png",
                      ),
                      ItemKategori(
                        title: "White House",
                        location: "Jakarta",
                        image: "assets/images/modernHouse.png",
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Recommended For You",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: bold,
                  ),
                ),
              ),
              RecomKategori(
                title: "Wooden House",
                location: "Bandung",
                image: "assets/images/woodenHouse.png",
              ),
              const SizedBox(height: 10),
              RecomKategori(
                title: "Triangle House",
                location: "Bogor",
                image: "assets/images/triangleHouse.png",
              ),
              const SizedBox(height: 10),
              RecomKategori(
                title: "Hill House",
                location: "Depok",
                image: "assets/images/hillHouse.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

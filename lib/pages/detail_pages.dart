import 'package:flutter/material.dart';
import 'package:snicil/component/fasilitas_kategori.dart';
import 'package:snicil/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/houseModern.png"),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 60,
                  horizontal: 30,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back_ios),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 295,
            ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.only(
                  top: 15,
                  left: 30,
                  right: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Modern House",
                              style: titleTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "KBP Bandung, Indonesia",
                              style: subtitleTextStyle,
                            ),
                          ],
                        ),
                        Image.asset(
                          "assets/icons/ratings.png",
                          width: 100,
                        )
                      ],
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Listing Agent",
                      style: titleTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Image.asset(
                          "assets/icons/profile.png",
                          width: 60,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Syahla",
                              style: titleTextStyle.copyWith(
                                fontWeight: medium,
                              ),
                            ),
                            Text(
                              "House Owner",
                              style: subtitleTextStyle,
                            ),
                          ],
                        ),
                        const Spacer(),
                        Image.asset(
                          "assets/icons/message.png",
                          width: 30,
                        ),
                        const SizedBox(width: 8),
                        Image.asset(
                          "assets/icons/call.png",
                          width: 30,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "House Facilities",
                      style: titleTextStyle.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FasilitasKategori(
                          title: "Swimming Pool",
                          images: "assets/images/swimming.png",
                        ),
                        FasilitasKategori(
                          title: "4 Bedroom",
                          images: "assets/images/badroom.png",
                        ),
                        FasilitasKategori(
                          title: "Garage",
                          images: "assets/images/garage.png",
                        ),
                      ],
                    ),
                    const SizedBox(height: 18),
                    Text(
                      "Description",
                      style: titleTextStyle.copyWith(
                          fontSize: 16, fontWeight: bold),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Luxury homes at affordable prices with Bandung's hilly atmosphere. Located in a strategic location, flood free.",
                      style: subtitleTextStyle,
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Price",
                              style: subtitleTextStyle,
                            ),
                            Text(
                              "\$7,500",
                              style: TextStyle(
                                color: primaryColor,
                                fontSize: 20,
                                fontWeight: bold,
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: 50,
                          width: 200,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                backgroundColor: primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
                            onPressed: () {},
                            child: Text("Book Now",
                                style: titleTextStyle.copyWith(
                                  fontSize: 16,
                                  color: Colors.white,
                                )),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:snicil/theme.dart';

class ItemKategori extends StatelessWidget {
  final String title;
  final String location;
  final String image;
  ItemKategori({
    Key? key,
    required this.title,
    required this.location,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/details");
      },
      child: Container(
        width: 275,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                image,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: titleTextStyle.copyWith(fontWeight: semiBold),
                        ),
                        Text(
                          location,
                          style: subtitleTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    Image.asset(
                      "assets/icons/ratings.png",
                      width: 80,
                    )
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

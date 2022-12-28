import 'package:flutter/material.dart';
import 'package:snicil/theme.dart';

class RecomKategori extends StatelessWidget {
  final String title;
  final String location;
  final String image;
  RecomKategori({
    Key? key,
    required this.title,
    required this.location,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              child: Row(
                children: [
                  Image.asset(
                    image,
                    width: 60,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: bold,
                        ),
                      ),
                      Text(
                        location,
                        style: subtitleTextStyle,
                      ),
                      const SizedBox(height: 10),
                      Image.asset(
                        "assets/icons/ratings.png",
                        width: 60,
                      )
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.arrow_forward_ios),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

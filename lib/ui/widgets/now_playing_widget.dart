import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class NowPlayingWidget extends StatelessWidget {
  const NowPlayingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // بيانات وهمية كمثال ثابت
    final dummyImages = [
      'https://image.tmdb.org/t/p/w500/example1.jpg',
      'https://image.tmdb.org/t/p/w500/example2.jpg',
      'https://image.tmdb.org/t/p/w500/example3.jpg',
    ];

    return CarouselSlider(
      options: CarouselOptions(
        height: 370,
        autoPlay: true,
        viewportFraction: 0.9,
      ),
      items: dummyImages.map((imageUrl) {
        return Stack(
          children: [
            Image.network(
              imageUrl,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            const Positioned(
              left: 75,
              bottom: 16,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 7.5,
                    backgroundColor: Colors.red,
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Now Playing",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}

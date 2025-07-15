import 'package:flutter/material.dart';

class TopRatedWidget extends StatelessWidget {
  const TopRatedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // صور وهمية (dummy)
    final dummyPosters = [
      'https://image.tmdb.org/t/p/w500/example5.jpg',
      'https://image.tmdb.org/t/p/w500/example6.jpg',
      'https://image.tmdb.org/t/p/w500/example7.jpg',
      'https://image.tmdb.org/t/p/w500/example8.jpg',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 12.0),
          child: Text(
            "Top Rated",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: dummyPosters.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.network(
                  dummyPosters[index],
                  width: 103,
                  height: 161,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

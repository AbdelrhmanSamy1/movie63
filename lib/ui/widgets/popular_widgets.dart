import 'package:flutter/material.dart';

class PopularWidget extends StatelessWidget {
  const PopularWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyPosters = [
      'https://image.tmdb.org/t/p/w500/example1.jpg',
      'https://image.tmdb.org/t/p/w500/example2.jpg',
      'https://image.tmdb.org/t/p/w500/example3.jpg',
      'https://image.tmdb.org/t/p/w500/example4.jpg',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 12.0),
          child: Text(
            "Popular on Netflix",
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

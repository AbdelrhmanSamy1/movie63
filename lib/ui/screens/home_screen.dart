import 'package:flutter/material.dart';

import '../widgets/now_playing_widget.dart';
import '../widgets/popular_widgets.dart';
import '../widgets/top_rated.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: const [
          NowPlayingWidget(),
          SizedBox(height: 6),
          PopularWidget(),
          SizedBox(height: 6),
          TopRatedWidget(),
        ],
      ),
    );
  }
}

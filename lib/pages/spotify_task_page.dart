import 'dart:ui';

import 'package:flutter/material.dart';

class SpotifyTask extends StatefulWidget {
  static const id = '/spotify_task';

  const SpotifyTask({Key? key}) : super(key: key);

  @override
  State<SpotifyTask> createState() => _SpotifyTaskState();
}

class _SpotifyTaskState extends State<SpotifyTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          decoration:  BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/image_spotify.png"),
            ),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topCenter,
                colors: [
                  Colors.black,
                  Colors.black,
                ]

            ),
          ),
          child: Container(
            decoration: BoxDecoration(

              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topLeft,
                  stops: const [0.1, 0.2, 0.0],
                  colors: [
                    //Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.6),
                    Colors.black.withOpacity(0.2),
                    Colors.black.withOpacity(0.1),

                  ]

              ),
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(400),
          child: Column(),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topCenter,
            colors: [




              Colors.black,
              Colors.black,
            ],
          ),
        ),

      ),
    );
  }
}

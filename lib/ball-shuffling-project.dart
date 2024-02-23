import 'dart:math';
import 'package:flutter/material.dart';

class BallShuffling extends StatefulWidget {
  @override
  State<BallShuffling> createState() => _BallShufflingState();
}

class _BallShufflingState extends State<BallShuffling> {
  String ball1 = "assets/ball1.png";

  void shuffleball() {
    int randomNumber = Random().nextInt(5) + 1;
    print(randomNumber);
    ball1 = "assets/ball$randomNumber.png";
    print(ball1);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 8, 189, 221),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Ask Me Anything...",
            style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),
          ),
          Image(image: AssetImage(ball1),
          height: 200,
          width: 200,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero
              )
            ),
            onPressed: shuffleball,
            child: Text(
              "Ask",
              style: TextStyle(
                color: (Color.fromARGB(255, 8, 189, 221)
                
              ),
              ),
            ),
          ),
        ],
      ),
      ),
    );
  }
}

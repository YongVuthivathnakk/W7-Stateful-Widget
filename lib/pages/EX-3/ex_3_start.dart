import 'package:flutter/material.dart';

List<String> images = [
  "lib/assets/w4-s2/bird.jpg",
  "lib/assets/w4-s2/bird2.jpg",
  "lib/assets/w4-s2/insect.jpg",
  "lib/assets/w4-s2/girl.jpg",
  "lib/assets/w4-s2/man.jpg",
];
int imageNumber = 0;

class Exercise3 extends StatefulWidget {
  const Exercise3({super.key});

  @override
  State<Exercise3> createState() => _Exercise3State();
}

class _Exercise3State extends State<Exercise3> {
  onNextImage() {
    setState(() {
      if (imageNumber == images.length - 1) {
        imageNumber = 0;
      } else {
        imageNumber++;
      }
    });
  }

  onPreviousImage() {
    setState(() {
      if (imageNumber == 0) {
        imageNumber = images.length - 1;
      } else {
        imageNumber--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: const Text('Image viewer'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.navigate_before),
            tooltip: 'Go to the previous image',
            onPressed: () => {onPreviousImage()},
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
            child: IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Go to the next image',
              onPressed: () => {onNextImage()},
            ),
          ),
        ],
      ),
      body: Image.asset(images[imageNumber]),
    );
  }
}

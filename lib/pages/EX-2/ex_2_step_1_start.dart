import 'package:flutter/material.dart';

class Exercise2 extends StatefulWidget {
  const Exercise2({super.key});

  @override
  State<Exercise2> createState() => _Exercise2State();
}

class _Exercise2State extends State<Exercise2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Favorite cards"),
      ),
      body: Column(
        children: [
          FavoriteCard(
            title: "I Got a New Car",
            description: "A new car have dropped so I bought it.",
          ),
          FavoriteCard(
            title: "I Love Cat",
            description:
                "Cat is my favorite animal so i make it as my pet called Muhamad Sombul",
          ),
          FavoriteCard(
            title: "A Dog Just Bit Me",
            description: "I have to get a vaccine.",
          ),
        ],
      ),
    );
  }
}

// =========== Card =============

class FavoriteCard extends StatefulWidget {
  final String title;
  final String description;

  const FavoriteCard({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  bool isFavorite = false;

  onFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: .5, color: Colors.grey)),
      ),
      child: Row(
        children: [
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("title", style: TextStyle(color: Colors.blue)),
                SizedBox(height: 20),
                Text("description"),
              ],
            ),
          ),

          IconButton(
            onPressed: () {
              onFavorite();
            },
            icon: isFavorite
                ? Icon(Icons.favorite, color: Colors.red)
                : Icon(Icons.favorite_border_outlined, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

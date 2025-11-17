import 'package:flutter/material.dart';

int MAX_SCORE = 10;

class Bonus extends StatefulWidget {
  const Bonus({super.key});

  @override
  State<Bonus> createState() => _BonusState();
}

class _BonusState extends State<Bonus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Score Board", style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.lightGreen),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ScoreCard(title: "My score in Flutter"),
                ScoreCard(title: "My score in Dart"),
                ScoreCard(title: "My score in React"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ScoreCard extends StatefulWidget {
  final String title;

  const ScoreCard({super.key, required this.title});

  @override
  State<ScoreCard> createState() => _ScoreCardState();
}

class _ScoreCardState extends State<ScoreCard> {
  int score = 0;
  int emptyScore = 10;

  onAdd() {
    setState(() {
      if (score < MAX_SCORE) {
        score++;
      }

      emptyScore = MAX_SCORE - score;
    });
  }

  onRemove() {
    setState(() {
      if (score > 0) {
        score--;
      }
      emptyScore = MAX_SCORE - score;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            widget.title,
            style: TextStyle(color: Colors.grey[600], fontSize: 32),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  onRemove();
                },
                icon: Icon(Icons.remove),
              ),
              SizedBox(width: 60),
              IconButton(
                onPressed: () {
                  onAdd();
                },
                icon: Icon(Icons.add),
              ),
            ],
          ),
          SizedBox(height: 40),
          Container(
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.grey),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: score,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: score < 5
                          ? Colors.green[200]
                          : score < 10
                          ? Colors.green
                          : Colors.green[800],
                    ),
                  ),
                ),
                Expanded(flex: emptyScore, child: SizedBox()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

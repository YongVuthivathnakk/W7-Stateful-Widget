import 'package:flutter/material.dart';

class Exercise1 extends StatefulWidget {
  const Exercise1({super.key});

  @override
  State<Exercise1> createState() => _Exercise1State();
}

class _Exercise1State extends State<Exercise1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Custom buttons")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SelectButton(),
            SelectButton(),
            SelectButton(),
            SelectButton(),
            SelectButton(),
          ],
        ),
      ),
    );
  }
}

// ====================== Button Class =======================

class SelectButton extends StatefulWidget {
  const SelectButton({super.key});

  @override
  State<SelectButton> createState() => _SelectButtonState();
}

class _SelectButtonState extends State<SelectButton> {
  bool isSelected = false;

  onSelected() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        onPressed: () => {onSelected()},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            isSelected ? Colors.blue[500] : Colors.blue[50],
          ),
        ),
        child: Center(
          child: Text(
            (isSelected ? "Selected" : "Not Selected"),
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}

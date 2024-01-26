import 'package:flutter/material.dart';
import 'package:rpg_companion/components/initiativeCard.dart';

class InitiativeTrackerScreen extends StatefulWidget {
  const InitiativeTrackerScreen({super.key});

  @override
  State<InitiativeTrackerScreen> createState() =>
      _InitiativeTrackerScreenState();
}

class _InitiativeTrackerScreenState extends State<InitiativeTrackerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 32,
        ),
        title: Text("Initiative Tracker"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InitiativeCard("Teste", 1),
          ],
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.red,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

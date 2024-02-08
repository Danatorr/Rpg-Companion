import 'package:flutter/material.dart';
import 'package:rpg_companion/data/initiative_inherited.dart';
import 'package:rpg_companion/screens/newCardScreen.dart';

class InitiativeTrackerScreen extends StatefulWidget {
  const InitiativeTrackerScreen({super.key});

  @override
  State<InitiativeTrackerScreen> createState() =>
      _InitiativeTrackerScreenState();
}

class _InitiativeTrackerScreenState extends State<InitiativeTrackerScreen> {
  @override
  Widget build(BuildContext context) {
    final inherited = InitiativeInherited.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 32,
        ),
        title: const Text("Initiative Tracker"),
      ),
      body: ListenableBuilder(
          listenable: inherited.notifier!,
          builder: (context, child) {
            return ListView.builder(
              itemCount: inherited.notifier!.value.length,
              itemBuilder: (context, index) => inherited.notifier!.value[index],
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (contextNew) => NewCardScreen(initiativeContext: context,)));
        },
        backgroundColor: Colors.red,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

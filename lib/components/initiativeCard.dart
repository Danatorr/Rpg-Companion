import 'package:flutter/material.dart';

class InitiativeCard extends StatefulWidget {
  final String name;
  final int initiativeNumber;

  //const InitiativeCard({required ValueKey<UniqueKey> valueKey, required this.name, required this.initiativeNumber})
  //    : super(key: valueKey);

  const InitiativeCard({required ValueKey valueKey, required this.name, required this.initiativeNumber})
      : super(key: valueKey);

  @override
  State<InitiativeCard> createState() => _InitiativeCardState();
}

class _InitiativeCardState extends State<InitiativeCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: 370,
            height: 80,
            color: Colors.black87,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  widget.name,
                  style: cardTextStyle(),
                ),
                Text(
                  widget.initiativeNumber.toString(),
                  style: cardTextStyle(),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

TextStyle cardTextStyle () => const TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold
);

import 'package:flutter/material.dart';

import '../components/initiativeCard.dart';

class InitiativeInherited extends InheritedWidget {
  InitiativeInherited({
    super.key,
    required Widget child,
  }) : super(child: child);

  List<InitiativeCard> initiativeList = [];

  static InitiativeInherited of(BuildContext context) {
    final InitiativeInherited? result =
        context.dependOnInheritedWidgetOfExactType<InitiativeInherited>();
    assert(result != null, 'No InitiativeInherited found in context');
    return result!;
  }

  void addInitiative(String name, int initiativeNumber) {
    initiativeList.add(InitiativeCard(
      valueKey: ValueKey<UniqueKey>(UniqueKey()),
      name: name,
      initiativeNumber: initiativeNumber,
    ));

    print(initiativeList.first.initiativeNumber);
    print(initiativeList.first.key);
    initiativeList
        .sort((a, b) => b.initiativeNumber.compareTo(a.initiativeNumber));
    print(initiativeList.first.key);
    print(initiativeList.first.initiativeNumber);

    for (var element in initiativeList) {
      print(element.initiativeNumber);
    }
  }

  void deleteInitiative() {
    //Delete
    //Add Sorting Algorithm
  }

  @override
  bool updateShouldNotify(InitiativeInherited oldWidget) {
    return oldWidget.initiativeList.length != initiativeList.length;
  }
}

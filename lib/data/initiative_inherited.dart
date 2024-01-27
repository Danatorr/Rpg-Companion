import 'package:flutter/material.dart';

import '../components/initiativeCard.dart';

class InitiativeInherited extends InheritedWidget {
   InitiativeInherited({
    super.key,
    required Widget child,
  }) : super(child: child);

  final List<InitiativeCard> initiativeList = [InitiativeCard("Daniel", 2)];

  static InitiativeInherited of(BuildContext context) {
    final InitiativeInherited? result =
        context.dependOnInheritedWidgetOfExactType<InitiativeInherited>();
    assert(result != null, 'No InitiativeInherited found in context');
    return result!;
  }

  void addInitiative(String name, int initiativeNumber){
    initiativeList.add(InitiativeCard(name, initiativeNumber));
  }

  void deleteInitiative(){

  }

  @override
  bool updateShouldNotify(InitiativeInherited old) {
    return old.initiativeList.length != initiativeList.length;
  }
}
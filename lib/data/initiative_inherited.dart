import 'package:flutter/material.dart';

import '../components/initiativeCard.dart';

class InitiativeInherited extends InheritedNotifier<ValueNotifier<List<InitiativeCard>>> {
  InitiativeInherited({
    super.key,
    required Widget child,
  }) : super(child: child, notifier: ValueNotifier([]));


  static InitiativeInherited of(BuildContext context) {
    final InitiativeInherited? result =
        context.dependOnInheritedWidgetOfExactType<InitiativeInherited>();
    assert(result != null, 'No InitiativeInherited found in context');
    return result!;
  }

  void addInitiative(String name, int initiativeNumber) {
    print("adding name $name, initiative $initiativeNumber");
    notifier!.value.add(InitiativeCard(
      valueKey: ValueKey<UniqueKey>(UniqueKey()),
      name: name,
      initiativeNumber: initiativeNumber,
    ));

    notifier!.value
        .sort((a, b) => b.initiativeNumber.compareTo(a.initiativeNumber));

    notifier!.value.forEach(print);

    notifier!.notifyListeners();
  }

  void deleteInitiative() {
    //Delete
    //Add Sorting Algorithm
  }

  @override
  bool updateShouldNotify(InitiativeInherited oldWidget) {
    return true;
  }
}

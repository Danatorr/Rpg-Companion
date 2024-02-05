import 'package:flutter/material.dart';
import 'package:rpg_companion/data/initiative_inherited.dart';

class NewCardScreen extends StatefulWidget {
  const NewCardScreen({super.key, required this.initiativeContext});

  final BuildContext initiativeContext;

  @override
  State<NewCardScreen> createState() => _NewCardScreenState();
}

class _NewCardScreenState extends State<NewCardScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController initiativeNumberController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
          title: const Text(
            "New Initiative",
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextFormField(
                controller: nameController,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  filled: true,
                  fillColor: Colors.white,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please insert a name";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: initiativeNumberController,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "Initiative Value",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  filled: true,
                  fillColor: Colors.white,
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please insert a valid initiative value";
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    InitiativeInherited.of(widget.initiativeContext)
                        .addInitiative(nameController.text,
                            int.parse(initiativeNumberController.text));
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Adding Initiative')),
                    );
                  }
                  Navigator.pop(context);
                },
                child: const Text("Add"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

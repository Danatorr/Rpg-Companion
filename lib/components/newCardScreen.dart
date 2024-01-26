import 'package:flutter/material.dart';

class NewCardScreen extends StatefulWidget {
  const NewCardScreen({super.key});

  @override
  State<NewCardScreen> createState() => _NewCardScreenState();
}

class _NewCardScreenState extends State<NewCardScreen> {
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
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Adding Initiative')),
                    );
                  }
                },
                child: const Text("Add"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

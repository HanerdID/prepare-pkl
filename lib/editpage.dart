import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Data'),
      ),
      body: Form(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Zaeri',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Kemayoran',
                ),
              ),
              SizedBox(height: 20.0,),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
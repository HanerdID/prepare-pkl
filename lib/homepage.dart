import 'package:belajar_1/editpage.dart';
import 'package:belajar_1/loginpage.dart';
import 'package:belajar_1/tambahdata.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) {
              return Card(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => EditPage(
                            )),
                      ),
                    );
                  },
                  child: ListTile(
                    title: Text('Zaeri'),
                    subtitle: Text('Kemayoran'),
                    trailing: IconButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: ((context) {
                              return AlertDialog(
                                  content: Text(
                                      "Yakin ingin menghapus data Zaeri?"),
                                  actions: [
                                    ElevatedButton(
                                        onPressed: () {
                                        },
                                        child: Text("Ya")),
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text("Tidak")),
                                  ]);
                            }));
                      },
                      icon: const Icon(Icons.delete),
                    ),
                  ),
                ),
              );
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const TambahData()));
          },
          child: const Icon(Icons.add),
        ));
  }
}
import 'package:belajar_1/editpage.dart';
import 'package:belajar_1/tambahdata.dart';
import 'package:belajar_1/theme.dart';
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
          backgroundColor: blue1,
          elevation: 0,
          toolbarHeight: 71,
          title: Text('VAS', style: bungee),
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
                        builder: ((context) => const EditPage(
                            )),
                      ),
                    );
                  },
                  child: ListTile(
                    title: const Text('Zaeri'),
                    subtitle: const Text('Kemayoran'),
                    trailing: IconButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: ((context) {
                              return AlertDialog(
                                  content: const Text(
                                      "Yakin ingin menghapus data Zaeri?"),
                                  actions: [
                                    ElevatedButton(
                                        onPressed: () {
                                        },
                                        child: const Text("Ya")),
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text("Tidak")),
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
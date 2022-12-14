import 'package:flutter/material.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/data.dart';
import 'package:counter_7/page/mywatchlist_page.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/mywatchlist_page.dart';

class DrawerBar extends StatelessWidget {
    const DrawerBar({super.key});

    @override
    Widget build(BuildContext context) {
        return Drawer(
            child: Column(
                children: [
                    ListTile(
                        title: const Text('counter_7'),
                        onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => const MyHomePage(title: 'counter_7')),
                            );
                        },
                    ),
                    ListTile(
                        title: const Text('Tambah Budget'),
                        onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => const MyFormPage()),
                            );
                        },
                    ),
                    ListTile(
                        title: const Text('Data Budget'),
                        onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => const MyDataPage()),
                            );
                        },
                    ),
                    ListTile(
                        title: const Text('My Watch List'),
                        onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => const MyWatchListPage()),
                            );
                        },
                    ),
                ],
            ),
        );
    }
}
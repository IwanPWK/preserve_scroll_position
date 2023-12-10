import 'package:flutter/material.dart';

final pageBucket = PageStorageBucket();

class ListItems extends StatefulWidget {
  const ListItems({super.key});

  @override
  State<ListItems> createState() => _ListItemsState();
}

class _ListItemsState extends State<ListItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: pageBucket,
        child: ListView.builder(
            key: const PageStorageKey<String>('bebasuniktiapscrollwidget'),
            itemBuilder: (context, index) => Card(
                  child: ListTile(
                      title: Text(
                    'List Item ${index + 1}',
                    style: const TextStyle(fontSize: 25),
                  )),
                )),
      ),
    );
  }
}

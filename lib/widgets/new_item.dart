import 'package:flutter/material.dart';
import 'package:shopping_list/data/categories.dart';

class NewItem extends StatefulWidget {
  const NewItem({super.key});

  @override
  State<NewItem> createState() => _NewItemState();
}

class _NewItemState extends State<NewItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
            child: Column(
          children: [
            TextFormField(
              maxLength: 30,
              decoration: const InputDecoration(
                label: Text('Name'),
              ),
              validator: (value) {
                return 'demo...';
              },
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: TextFormField(
                    //maxLength: 10,
                    decoration: const InputDecoration(
                      label: Text('Quantity'),
                    ),
                    initialValue: '1',
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: DropdownButtonFormField(
                      items: [
                        for (final category in categories.entries)
                          DropdownMenuItem(
                            value: category,
                            child: Row(
                              children: [
                                Container(
                                  width: 15,
                                  height: 15,
                                  color: category.value.color,
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Text(category.value.title),
                              ],
                            ),
                          ),
                      ],
                      onChanged: (value) {
                        //
                      }
                    ),
                ),
              ],
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){}, child: const Text('Reset')),
                ElevatedButton(onPressed: (){}, child: const Text('Add Item')),
              ],
            )
          ],
        )),
      ),
    );
  }
}

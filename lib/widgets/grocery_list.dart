import 'package:flutter/material.dart';
import 'package:shopping_list/data/dummy_item.dart';

class GroceryList extends StatelessWidget {
  const GroceryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
      ),
      body: ListView.builder(
        itemCount: groceryItems.length,
        itemBuilder: ((ctx, index) => 
          ListTile(
            title: Text(groceryItems[index].name),
            leading: Container(
              width: 20,
              height: 20,
              color: groceryItems[index].category.color,
            ),
            trailing: Text(groceryItems[index].quantity.toString()),
          )
        ),
      ),
    );
  }
}

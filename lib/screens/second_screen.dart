import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/Providers/shopping_cart.dart';


class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key, required this.title});
  final String title;

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text(
              '${context.watch<ShoppingCart>().count}',
            ),
            Text(
              '${context.watch<ShoppingCart>().cart}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<ShoppingCart>().addItem('Butter'),
        tooltip: 'Decrease',
        child: const Icon(Icons.add),
      ),
    );
  }
}

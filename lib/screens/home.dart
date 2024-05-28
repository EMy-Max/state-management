import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Providers/counter_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    int count = context.watch<Counter>().counter;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              count.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/second');
            },
                child: Text('Go to Cart'))
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () => context.read<Counter>().decrement(),
              tooltip: 'Decrease',
              child: const Icon(Icons.minimize),
            ),
            SizedBox(width: 20,),
            FloatingActionButton(
              onPressed: () => context.read<Counter>().reset(),
              tooltip: 'Reset',
              child: const Text('0'),
            ),
            SizedBox(width: 20,),
            FloatingActionButton(
              onPressed: () => context.read<Counter>().increment(),
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

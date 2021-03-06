import 'package:flutter/material.dart';
import 'package:ntapp/widgets/header.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String title = 'Baowee flutter';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('init state home page');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/img8.jpg',
          height: 50,
          filterQuality: FilterQuality.low,
          // width: 100,
        ),
        // centerTitle: true,
        // title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Hello $title', style: Theme.of(context).textTheme.headline1),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    title = 'baowee';
                  });
                },
                child: const Text('Press now')),
            const Header(),
            const Text(
              'Increment your push:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

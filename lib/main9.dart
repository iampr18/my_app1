import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  var count = 0;

// //this will be called once when state is initialized for the first time
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

// // this will be called when the state is dispossed.
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('My app'),
        ),

        //Whenever the setState() function is called the build func is again build

        // - be default stateless - has only build function
        // - but in statefull - createState function is called ... you will have to create a class of type state... which will return the UI.
        body: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.cyanAccent,
            ),
            Text("Count value = $count"),
            ElevatedButton(
                onPressed: () {
                  print('btn clicked');
                  count++;
                  setState(() {});
                },
                child: Text('click me'))
          ],
        ));
  }
}

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var arrNames = ['Apple', 'Ball', 'Cat', 'Dog', 'Eat', 'Fish', 'Icecream'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('My app'),
        ),
        //------------------------------------------------------
        //ListView - when repeat same widget [Row/Column + scrollview]
        //ListView, ListView.builder(for dynamic data), ListView.seperator class
        //ListView - will automatically detroy memory of items scrolled for efficiency

        // body: ListView.builder(
        //   itemBuilder: (context, index) {
        //     return Text(arrNames[index]);
        //   },
        //   itemCount: arrNames.length,
        //   scrollDirection: Axis.vertical,
        //   reverse: true,
        //   itemExtent: 120,
        // )

        // body: ListView.separated(
        //   itemBuilder: (context, index) {
        //     return Text(arrNames[index]);
        //   },
        //   itemCount: arrNames.length,
        //   scrollDirection: Axis.vertical,
        //   separatorBuilder: (context, index) {
        //     return Divider(
        //       height: 120,
        //       thickness: 4,
        //     );
        //   },
        // )

        //if you use decoration, then need to give color inside decoration
        // body: Container(
        //   width: double.infinity,
        //   height: double.infinity,
        //   color: const Color.fromARGB(255, 189, 189, 189),
        //   child: Center(
        //     child: Container(
        //       width: 150,
        //       height: 150,
        //       decoration: BoxDecoration(
        //           color: Colors.brown,
        //           borderRadius: BorderRadius.circular(20),
        //           border: Border.all(color: Colors.black, width: 5),
        //           boxShadow: const [
        //             BoxShadow(
        //                 blurRadius: 10, spreadRadius: 5, color: Colors.green)
        //           ]),
        //     ),
        //   ),
        // ),

        //wrap with Expended to take the remaining space- on main axis - Row/Column
        //within Expended you can use flex to define ratio for occupying space
        // body: Column(
        //   children: [
        //     Expanded(
        //         flex: 3,
        //         child: Container(
        //           height: 150,
        //           color: Colors.cyan,
        //         )),
        //     Expanded(
        //         child: Container(
        //       height: 150,
        //       color: Colors.amberAccent,
        //     )),
        //     Expanded(
        //         flex: 2,
        //         child: Container(
        //           height: 150,
        //           color: Colors.grey,
        //         )),
        //     Expanded(
        //         child: Container(
        //       height: 150,
        //       color: Colors.purple,
        //     )),
        //   ],
        // ),

        //Padding
        // body: Padding(
        //   padding: EdgeInsets.only(top: 10, left: 20),
        //   child: Text('hello to all'),
        // ),

        //Margin is inside container
        // body: Container(
        //   margin: EdgeInsets.all(20),
        //   width: 100,
        //   height: 100,
        //   color: Colors.green,
        // ),

        //List tile for making a basic tile real fast
        // body: ListView.separated(
        //     itemBuilder: (context, index) {
        //       return ListTile(
        //         leading: Text('${index + 1}'),
        //         title: Text(arrNames[index]),
        //         subtitle: Text('hello to all'),
        //         trailing: Icon(Icons.add),
        //       );
        //     },
        //     separatorBuilder: (context, index) {
        //       return Divider(
        //         height: 20,
        //         thickness: 4,
        //       );
        //     },
        //     itemCount: arrNames.length),

        body: Container(
          // height: 100,
          // width: 100,
          child: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/ig1.png'),
            backgroundColor: Colors.pink,
            maxRadius: 50,
            child: Text('Insta'),
          ),
        ));
  }
}

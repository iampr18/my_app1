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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('My app'),
      ),
      // body: Center(
      //   child: Container(
      //     width: 100,
      //     height: 100,
      //     color: Colors.indigoAccent,
      //     child: Text('hello to all'),
      //   ),
      // )

      //----------------------------------

      // body: const Text(
      //   'hello mandetory',
      //   style: TextStyle(
      //       fontSize: 25,
      //       fontWeight: FontWeight.w800,
      //       color: Colors.deepPurpleAccent,
      //       backgroundColor: Colors.grey),
      // )

      //--------------------------------------

      //ElevatedButton, Textbutton, Outlinedbutton

      // body: ElevatedButton(
      //   child: Text('Click here!!'),
      //   onPressed: () {
      //     print('simple clicked');
      //   },
      //   onLongPress: () {
      //     print('long pressed btn');
      //   },
      // )

      //-----------------------------------------
      //Images - add in pubspec.yaml file then do pub.get to sync with project
      // body: Container(
      //   child: Image.asset('assets/images/flower.jpg'),
      //   width: 300,
      // ),

      //------------------------------------------
      // Column and Rows have children and can store multiple widgets of any type unless some type is defined
      //Full width is occupied of the axis unless specified by a container or size box.
      //Full height will not be taken for cross axis alignment.
      // start, center, end, space evenly around between
      //crossaxis alignment - .stretch will allow full height
      // body: Container(
      //   height: 100,
      //   color: Colors.amber,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     crossAxisAlignment: CrossAxisAlignment.end,
      //     children: [
      //       Text('A'),
      //       Text('B'),
      //       Text('C'),
      //       OutlinedButton(
      //           onPressed: () {
      //             print('pressed');
      //           },
      //           child: Text('click here'))
      //     ],
      //   ),
      // )

      //---------------------------------------------------------

      //Inkwell - to give onTap fuction to widgets(all) which don't have onPressed
      // body: InkWell(
      //   child: Image.asset('assets/images/lady.jpg'),
      //   onTap: () {
      //     print('Image is tapped!');
      //   },
      // ),

      //----------------------------------------------------------

      //Scrollview (else overRenderPixel error)
      //SingleChildScrollView - scroll on the child passed
      //(List View is having scroll view bydefault in it)

      // body: SingleChildScrollView(
      //   scrollDirection: Axis.vertical,
      //   child: Column(
      //     children: [
      //       Container(
      //         width: 200,
      //         height: 300,
      //         color: Colors.blueAccent,
      //         margin: EdgeInsets.only(bottom: 10),
      //       ),
      //       Container(
      //         width: 200,
      //         height: 300,
      //         color: Colors.blueAccent,
      //         margin: EdgeInsets.only(bottom: 10),
      //       ),
      //       Container(
      //         width: 200,
      //         height: 300,
      //         color: Colors.blueAccent,
      //         margin: EdgeInsets.only(bottom: 10),
      //       ),
      //     ],
      //   ),
      // )
    );
  }
}

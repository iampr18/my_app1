import 'package:flutter/material.dart';
import 'package:my_app1/ui_helper/util.dart';
import 'package:my_app1/widgets/rounded_btn.dart';

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
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var cList = [
    Colors.amber,
    Colors.green,
    Colors.grey,
    Colors.lightBlue,
    Colors.limeAccent,
    Colors.purple,
    Colors.teal,
    Colors.red
  ];

  myFunc() {
    print('yo boy- you clicked the button');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('My app'),
      ),

      // Grid has scroll inbuilt in it.

      // body: GridView.count(
      //   crossAxisCount: 3,
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   children: [
      //     Container(
      //       color: Colors.amber,
      //     ),
      //     Container(
      //       color: Colors.green,
      //     ),
      //     Container(
      //       color: Colors.grey,
      //     ),
      //     Container(
      //       color: Colors.lightBlue,
      //     ),
      //     Container(
      //       color: Colors.limeAccent,
      //     ),
      //     Container(
      //       color: Colors.purple,
      //     ),
      //     Container(
      //       color: Colors.teal,
      //     ),
      //     Container(
      //       color: Colors.red,
      //     ),
      //   ],
      // ),

      // body: GridView.extent(
      //   maxCrossAxisExtent: 120,
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   children: [
      //     Container(
      //       color: Colors.amber,
      //     ),
      //     Container(
      //       color: Colors.green,
      //     ),
      //     Container(
      //       color: Colors.grey,
      //     ),
      //     Container(
      //       color: Colors.lightBlue,
      //     ),
      //     Container(
      //       color: Colors.limeAccent,
      //     ),
      //     Container(
      //       color: Colors.purple,
      //     ),
      //     Container(
      //       color: Colors.teal,
      //     ),
      //     Container(
      //       color: Colors.red,
      //     ),
      //   ],
      // ),

      // body: GridView.builder(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
      //   itemBuilder: (context, index) {
      //     return Container(
      //       color: cList[index],
      //     );
      //   },
      //   itemCount: cList.length,
      // ),

      //----------------------------------
      // callback func = function passed as argument

      // body: ElevatedButton(onPressed: myFunc, child: Text('click me yo')),

      //----------------------------------

      // you can make custom widgets by making a class and extending by statefull/stateless widgets... and can call them like Class_name() where needed

      // body: Center(
      //     child: Column(
      //   children: [
      //     Container(
      //       width: 200,
      //       child: RoundedBtn(
      //         btnName: 'click here bro',
      //         icon: Icon(Icons.lock),
      //         textStyle: myTextStyle14(),
      //         callback: () {
      //           print('logged in broo');
      //         },
      //       ),
      //     ),
      //     Container(
      //       width: 200,
      //       child: RoundedBtn(
      //         btnName: 'click here play',
      //         icon: Icon(Icons.play_arrow),
      //         textStyle: myTextStyle14(),
      //         callback: () {
      //           print('playing');
      //         },
      //       ),
      //     ),
      //     Container(
      //       width: 200,
      //       child: RoundedBtn(
      //         btnName: 'click',
      //         textStyle: myTextStyle14(),
      //         callback: () {
      //           print('shit mann');
      //         },
      //       ),
      //     ),
      //   ],
      // ))

      //----------------------------------
      //Stack is used to overlap childrens of a widgets
      // first child = bottom
      // last child = on top
      // does overlay of children from top left corner
      // you get relative positioning from here
      // Stack will by default take height width of first child if not specified, so Positioned won't be shown full if it overflows stack height width

      // body: Container(
      //   height: 500,
      //   width: 400,
      //   child: Stack(
      //     children: [
      //       Container(
      //         width: 200,
      //         height: 150,
      //         color: Colors.brown,
      //       ),
      //       Positioned(
      //         top: 10,
      //         left: 70,
      //         child: Container(
      //           width: 170,
      //           height: 120,
      //           color: Colors.deepOrange,
      //         ),
      //       ),
      //       Container(
      //         width: 150,
      //         height: 100,
      //         color: Colors.lightBlue,
      //       ),
      //     ],
      //   ),
      // )

      //----------------------------------
      //this is why I normally use flex to align items in correct position in css
      // Wrap is used to wrap to next line for content for which neither size nor count is fixed, based on the dynamic length and count things will wrap to next line

      // body: Container(
      //   width: double
      //       .infinity, // given so that wrap align work acc to full screen
      //   child: Wrap(
      //     spacing: 10,
      //     runSpacing: 10,
      //     alignment: WrapAlignment.spaceEvenly,
      //     children: [
      //       Container(
      //         height: 100,
      //         width: 200,
      //         color: Colors.amber,
      //       ),
      //       Container(
      //         height: 100,
      //         width: 400,
      //         color: Colors.deepPurpleAccent,
      //       ),
      //       Container(
      //         height: 100,
      //         width: 50,
      //         color: Colors.blue,
      //       ),
      //       Container(
      //         height: 100,
      //         width: 200,
      //         color: Colors.pink,
      //       ),
      //     ],
      //   ),
      // )

      //----------------------------------
      // Sized box= when container only used for determining height and width, it is also used when we want to give some margin between two widgets
      // Sizedbox.square (for only H and W), .expanded (will take width and height of its parent), .shrink (will take min width and min height of its parent)

      // body: SizedBox(
      //   height: 40,
      //   width: 150,
      //   child: ElevatedButton(
      //       onPressed: () {
      //         print('clicked yo');
      //       },
      //       child: Text("click me!")),
      // ),

      //------------------------------------
      //Position

      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.brown,
        child: Stack(
          children: [
            Positioned(
                top: 50,
                right: 100,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.cyan,
                ))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_app1/ui_helper/util.dart';

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
          primarySwatch: Colors.deepOrange,
          textTheme: const TextTheme(
              headlineLarge: TextStyle(
            fontSize: 30,
            fontFamily: 'English1',
          ))),
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
  var textId = TextEditingController();
  var textPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('My app'),
      ),
      // body: Container(
      //   child: Text(
      //     'This is pro app development',
      //     style: TextStyle(fontSize: 20, fontFamily: 'English1'),
      //   ),
      // ),

      // body: Column(
      //   children: [
      //     Text(
      //       'heading 1',
      //       style: Theme.of(context).textTheme.headlineLarge,
      //     ),
      //     Text('this is a paragraph one '),
      //     Text('heading 2',
      //         style: Theme.of(context)
      //             .textTheme
      //             .headlineLarge!
      //             .copyWith(color: Colors.green)),
      //     Text(
      //       'this is paragraph two',
      //       style: myTextStyle14(),
      //     ),
      //     Text(
      //       'this is paragraph two',
      //       style: myTextStyle14(textColor: Colors.pink),
      //     ),
      //   ],
      // ),

      //Card
      // body: Card(
      //   elevation: 5,
      //   shadowColor: Colors.brown,
      //   child: Padding(
      //     padding: EdgeInsets.all(10),
      //     child: Text('this is shadowed text'),
      //   ),
      // ),

      //Textfield
      body: Container(
          width: 200,
          child: Column(
            children: [
              TextField(
                enabled: true, //means this text field is not disabled
                controller: textId,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            BorderSide(color: Colors.deepOrange, width: 4)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.green, width: 4)),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.brown, width: 4)),
                    suffix: Text('User ID'),
                    suffixIcon: IconButton(
                        onPressed: () {
                          print('pr- pressed icon');
                        },
                        icon: const Icon(
                          Icons.remove_red_eye,
                          color: Colors.cyan,
                        )),
                    prefix: const CircleAvatar(
                      maxRadius: 8,
                      backgroundImage: AssetImage('assets/images/ig1.png'),
                    )),
              ),

              //by default theme color will be taken for focused
              TextField(
                controller: textPassword,
                keyboardType: TextInputType.phone,
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    hintText: 'Enter password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
              ),
              ElevatedButton(
                  onPressed: () {
                    String id = textId.text.toString();
                    String pass = textPassword.text;
                    print('Entered id = $id and pass = $pass');
                  },
                  child: Text('Submit'))
            ],
          )),
    );
  }
}

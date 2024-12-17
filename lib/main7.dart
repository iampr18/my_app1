import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
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
  String pDate = "";
  String pTime = "";
  @override
  //this is build everytime set state is done.
  Widget build(BuildContext context) {
    var currTime = DateTime.now();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('My app'),
        ),
        body: Column(
          children: [
            Container(
              child: Text(
                  'Current date = ${DateFormat('yMd').format(currTime)} and time = ${DateFormat("jms").format(currTime)}'),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text('Update time')),
            Container(
              child: Text('Picked date: $pDate and picked time: $pTime'),
            ),
            ElevatedButton(
                onPressed: () async {
                  DateTime? datePicked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2020),
                      lastDate: DateTime(2027));
                  if (datePicked != null) {
                    setState(() {
                      pDate = datePicked.toIso8601String();
                    });
                    print("date logged = $datePicked");
                  }
                },
                child: Text('Pick date')),
            ElevatedButton(
                onPressed: () async {
                  TimeOfDay? timePicked = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                      initialEntryMode: TimePickerEntryMode.dial);
                  if (timePicked != null) {
                    setState(() {});
                    print("time logged = $timePicked");
                  }
                },
                child: Text('Pick time'))
          ],
        ));
  }
}

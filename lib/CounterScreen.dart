import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
    final style1 = TextStyle(
      fontSize: 50.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            alignment: AlignmentDirectional.center,
            child: Text(
              "Counter",
              style: GoogleFonts.staatliches(textStyle: style),
            ),
          ),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                color: Colors.black,
                shape: CircleBorder(),
                onPressed: () {
                  setState(() {
                    counter--;
                    print(counter);
                  });
                },
                child: Icon(
                  Icons.remove,
                  color: Colors.blue,
                  size: 30.0,
                ),
              ),
              Text(
                '${counter}',
                style: style1,
              ),
              MaterialButton(
                color: Colors.black,
                shape: CircleBorder(),
                onPressed: () {
                  setState(() {
                    counter++;
                    print(counter);
                  });
                },
                child: Icon(
                  Icons.add,
                  color: Colors.blue,
                  size: 30.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

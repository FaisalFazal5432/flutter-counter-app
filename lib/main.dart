import 'package:flutter/material.dart';

void main() {
  runApp(MatApp());
}

class MatApp extends StatelessWidget {
  const MatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen(), debugShowCheckedModeBanner: false);
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int Count = 0;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Counter App", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
      ),
      body: Center(
        child: StatefulBuilder(
          builder: (BuildContext context, setState) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Count $Count", style: TextStyle(color: Colors.white,fontSize: 30)),
                const SizedBox(height: 23,),
                ElevatedButton(
                  onPressed: () {
                    setState((){Count++;});
                  },
                  child: Text(
                    "Increase",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

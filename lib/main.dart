import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String displayText = "No Data";
  TextEditingController TextEditor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Doo Bee Doo"),
          titleTextStyle: TextStyle(color: Colors.white),
          centerTitle: true,
          backgroundColor: Colors.black
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(child: Container(
              padding: EdgeInsets.all(15),
            child:  TextField(
              controller: TextEditor,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Enter your Task')),
            ),),),
            
            MaterialButton(
              onPressed: (){
                setState(() {
                  displayText = TextEditor.text;
                });
              },
              color: Colors.grey,
              padding: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Text("Click !"),
              ),
              Text(displayText),

              ],
            )

            
          ],
        ),
      ),
    );
  }
}
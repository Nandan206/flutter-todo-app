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

  List<String> TaskList = [];

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
                  TaskList.add(TextEditor.text);
                  TextEditor.clear();
                });
              },
              color: Colors.grey,
              padding: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Text("Add Task"),
              ),
              ],
            ),

            

            Flexible(
              child: ListView.builder(
                itemCount: TaskList.length,
                itemBuilder: (context, index){
                return Row(
                children: [
                  Expanded(child: Container(
                    padding: EdgeInsets.all(10),
                    child:Row(
                      children: [
                        Text(TaskList[index]),
                        Spacer(),
                   MaterialButton(
                    child: Icon(Icons.delete, color: Colors.red),
                    onPressed: (){
                      setState(() {
                        TaskList.removeAt(index);
                      });
                    
                  })
                      ]
                      
                    ),
              
              
                  ))
                  
                ],
              );
              }),
            )

          ],
        ),
      ),
    );
  }
}
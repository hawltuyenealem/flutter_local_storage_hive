
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    final box  = Hive.box('mybox');
    void writeData(){
      box.put(1, 'one');
      box.put(2,'two');
    }

    void readData(){
      box.getAt(1);
    }

    void deleteData(){
      box.deleteAt(1);
    }

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            MaterialButton(
              onPressed: writeData,
              child:Text('Write'),
              color: Colors.blue[200] ,
            ),
            MaterialButton(
              onPressed: readData,
              child:Text('Delete'),
              color: Colors.blue[200] ,
            ),
            MaterialButton(
              onPressed: deleteData,
              child:Text('Delete'),
              color: Colors.blue[200] ,
            ),
          ],
        ),
      )
    );
  }
}

import 'package:flutter/material.dart';

class Mypickerfile extends StatefulWidget{
 
const Mypickerfile ({super.key});
@override
State<StatefulWidget> createState(){
  return MypickerfileState();
}
}  
class MypickerfileState extends State<Mypickerfile>{
String exception = 'Nothing So far';
      //add file name ='nothing selected'
          //add file path ='nothing selected'

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('File Picker',),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Exception:$exception'),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('File Name : $filename'),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('File Path : $filepath'),
          ),
          Padding(padding: EdgeInsets.all(10),
          child: ElevatedButton(onPressed: (){
            openFile();
          },
          child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('Pickfile' ,
            style: TextStyle(
              fontSize: 20,
            ),),
          )),),
          Container(
            padding: EdgeInsets.only(left: 30,right: 20),
            color: Colors.black,
            height: 480,
            child: Image.file(File(filepath)),
          )
        ],
      ),
    );
  }


void openFile() async {
try {
  var files = await FilePicker.platform.pickFiles();
  if(files!= null){
    filepath = files.paths.single!;
    filename = filepath.split('/').last;
    setState((){});
  }
}
catch(e){
  print(e);
}
}
}
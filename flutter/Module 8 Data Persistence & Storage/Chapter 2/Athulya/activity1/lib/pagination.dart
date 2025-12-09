import 'package:flutter/material.dart';
import 'package:number_paginator/number_paginator.dart';

class Pagination extends StatefulWidget {
  const Pagination({super.key});

  @override
  State<Pagination> createState() => _PaginationState();
}

class _PaginationState extends State<Pagination> {
  int _currentPage=0;
  
  final List< Widget> _pages =[
  DummyPage(title:"Page 1",color:Colors.blue),
  DummyPage(title:"Page 2",color:Colors.red,),
  DummyPage(title:"Page 3",color:Colors.green),
  DummyPage(title:"Page 4",color:Colors.orange),
  DummyPage(title:"Page 5",color:const Color.fromARGB(255, 137, 10, 10)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Number Paginator Example",),centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(child: Center(child: _pages[_currentPage],
          )
          ),
          NumberPaginator(
            numberPages:_pages.length,
            initialPage:_currentPage,
            onPageChange:(int index){
              setState(() {
                _currentPage=index;
              }
              );
            }
          ),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}

class DummyPage extends StatelessWidget{
  final String title;
  final Color color;
  const DummyPage({Key?key,required this.title,required this.color}):super(key: key);
  @override
  Widget build(BuildContext context){
   return Container(
    width: double.infinity,
    height: double.infinity,
    color: color,
    child: Center(
      child: Text(title,
      style: const TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.bold)
      ,),
    ),

   );
  }
}
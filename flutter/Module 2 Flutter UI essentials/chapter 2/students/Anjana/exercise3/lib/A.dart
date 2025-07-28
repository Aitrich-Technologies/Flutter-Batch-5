import 'package:flutter/material.dart';

class A extends StatefulWidget {
  const A({super.key});

  @override
  State<A> createState() => _AState();
}

class _AState extends State<A> {
  List<String>imagesList=[
  'https://cdn.thewirecutter.com/wp-content/media/2024/11/cheapgaminglaptops-2048px-7981.jpg',
  'https://cdn.mos.cms.futurecdn.net/bNdPQYTtAtVvhR5fomr56o.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQKxY7WU1zpfQZ7F-2cyMKNRxLeiqC4ixwxg&s',
  'https://cdn.mos.cms.futurecdn.net/diHPYGSCyNdqdo7SHr5FTY.jpg'];
  List<String>ProductNames= ['product1','product2','product3','product4'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("appbar",
    style: TextStyle(fontSize: 40,fontWeight: FontWeight.w500),),
    centerTitle: true,backgroundColor: Colors.cyan,),
    
    body: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [Padding(padding: EdgeInsets.only(left: 8,top: 10)),
      Text("promotions",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
      
      SizedBox(height: 300,width: 450,child: 
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Image.network("https://rukminim2.flixcart.com/fk-p-flap/480/300/image/ac0b1bccd036c36e.jpg?q=90",
        fit: BoxFit.fitWidth,),
      )
      ),
      Text("featured products",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,height: 2),
      ),
      Padding(padding: EdgeInsets.all(8),
      child: GridView.builder(shrinkWrap: true,physics: NeverScrollableScrollPhysics(),
        itemCount: imagesList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,), itemBuilder: (context , index)
        {return
         Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Expanded(
       child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
       image: DecorationImage(image: NetworkImage(imagesList[index]),fit: BoxFit.cover))
       ),
      ),
       SizedBox(height: 10,),
      Text(ProductNames[index],maxLines: 1,overflow: TextOverflow.ellipsis,
      )         ],
         );
        }
        )
        ,)
      ]
      ,),
    ),
    );
  }
}
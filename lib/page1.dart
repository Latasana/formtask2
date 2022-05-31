import 'package:flutter/material.dart';


class Page1 extends StatefulWidget {

  final String name1;
  final String  address1;
  final String number1;
  final String email1 ;
  final String password1 ;
  final String qualification1 ;
  final String age1; 
  const Page1({ Key? key, required this.name1, required this.address1, required this.number1, required this.email1, required this.password1, required this.qualification1,required this.age1 }) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Final Submit"),
      ),
      body: Table(border: TableBorder.all(),
        columnWidths: {0:FlexColumnWidth(0.3)},
    children: [TableRow(children: [Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text("NAME :"),
    ),Text(widget.name1),],  ),

      TableRow(
      children: [Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("ADDRESS:"),
      ), Text(widget.address1)]
    ),
    TableRow(children: [Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text("NUMBER :"),
    ),Text(widget.number1),],  ),
     TableRow(children: [Padding(
       padding: const EdgeInsets.all(8.0),
       child: Text("EMAIL :"),
     ),Text(widget.email1),],  ),
 TableRow(children: [Padding(
   padding: const EdgeInsets.all(8.0),
   child: Text("PASSWORD :"),
 ),Text(widget.password1),],  ),
  TableRow(children: [Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text("QUALIFICATION :"),
  ),Text(widget.qualification1),],  ),
   TableRow(children: [Padding(
     padding: const EdgeInsets.all(8.0),
     child: Text("AGE :"),
   ),Text(widget.age1),],  ),
    ],
  
      ) 
    

    );
  }
}
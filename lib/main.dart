import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const Form1(),
    );
  }
}
class Form1 extends StatefulWidget {
  const Form1({ Key? key }) : super(key: key);

  @override
  State<Form1> createState() => _Form1State();
}

class _Form1State extends State<Form1> {
  String name = "";
  String  address = '';
  String number = '';
  String email = '';
  String password = '';
  String qualification = '';
  String age = '';

  TextEditingController _namecontroller = TextEditingController();
   TextEditingController _addresscontroller = TextEditingController();
    TextEditingController _numbercontroller = TextEditingController();
     TextEditingController _emailcontroller = TextEditingController();
      TextEditingController _paaswordcontroller = TextEditingController();
       TextEditingController _qualificationcontroller = TextEditingController();
        TextEditingController _agecontroller = TextEditingController();




  final GlobalKey<FormState>_formkey = GlobalKey<FormState>();

Widget _name(){
  return Padding(
    padding: const EdgeInsets.only(left: 50, right: 50),
    child:  
         TextFormField(
           controller: _namecontroller,
              
               decoration: InputDecoration(
                 icon: Icon(Icons.person),
                 labelText: "Name"
               ),
               validator: ((value) {
                              if(value == null || value.isEmpty){
                                return "Name is required";
                              }})
             ),
         
  );

}
Widget _address(){
  return Padding(
    padding: const EdgeInsets.only(left: 50, right: 50),
    child: TextFormField(
      controller: _addresscontroller,
       decoration: InputDecoration(
         icon: Icon(Icons.location_on_outlined),
         labelText: "Address"
       ),
        validator: ((value) {
                      if(value == null || value.isEmpty){
                        return "Address is required";
                      }})
     ),
  );
}

Widget _number(){
  return Padding(
    padding: const EdgeInsets.only(left: 50, right: 50),
    child: TextFormField(
      controller: _numbercontroller,
       decoration: InputDecoration(
         icon: Icon(Icons.phone),
         labelText: "Contact Number"
       ),
        validator: ((value) {
                      if(value == null || value.isEmpty){
                        return "Number is required";
                      }})
     ),
  );
}
Widget _email(){
  return Padding(
    padding: const EdgeInsets.only(left: 50, right: 50),
    child: TextFormField(
      controller: _emailcontroller,
       decoration: InputDecoration(
         icon: Icon(Icons.email),
         labelText: "Email"
       ),
        validator:
        ((value){
        if(value == null || value.isEmpty){
                        return "email is required";
                       
        }}
     ),
    )
  );
}
Widget _password(){
  return Padding(
    padding: const EdgeInsets.only(left: 50, right: 50),
    child: TextFormField(
      controller: _paaswordcontroller,
       decoration: InputDecoration(
         icon: Icon(Icons.key),
         labelText: "Password"
       ),
        validator: ((value) {
                      if(value == null || value.isEmpty){
                        return "Password is required";
                      }})
     ),
  );
}
Widget _qualification(){
  return Padding(
    padding: const EdgeInsets.only(left: 50, right: 50),
    child: TextFormField(
      controller: _qualificationcontroller ,
       decoration: InputDecoration(
         icon: Icon(Icons.cast_for_education),
         labelText: "Qualification"
       ),
        validator: ((value) {
                      if(value == null || value.isEmpty){
                        return "Qualification is required";
                      }})
     ),
  );
}
Widget _age(){
  return Padding(
    padding: const EdgeInsets.only(left: 50,right: 50),
    child: TextFormField(
      controller: _agecontroller,
       decoration: InputDecoration(
         icon: Icon(Icons.calendar_month_rounded),
         labelText: "Date of Birth"
       ),
        validator: ((value) {
                      if(value == null || value.isEmpty){
                        return "Age is required";
                      }})
     ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form",style: TextStyle(color: Colors.black, fontSize: 25),),
        actions: [Icon(Icons.abc_sharp)],
      ),
      body:Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Center(child: Text("APPLICATION FORM")),
       Form(
        key: _formkey,
        child:
      Column(
      
        children: [
               _name(),
               _address(),
               _number(),
               _email(),
               _password(),
               _qualification(),
               _age(),
              
            ],
          ),
    ),
      ElevatedButton(onPressed: () =>{
            if(_formkey.currentState!.validate())
            {
              name = _namecontroller.text,
              address = _addresscontroller.text,
              number = _numbercontroller.text,
              email = _emailcontroller.text,
              password = _paaswordcontroller.text,
              qualification = _qualificationcontroller.text,
              age = _agecontroller.text,

              Navigator.push(context, MaterialPageRoute(builder: (context) =>Page1(name1: name, address1: address, number1: number, email1: email, password1: password, qualification1: qualification, age1: age)))


            }
          } , child: Text("Submit"))],),

      );   
        
  }
}

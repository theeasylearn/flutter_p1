import 'package:flutter/material.dart';

class Accounts extends StatefulWidget {
  const Accounts({super.key});
  @override
  State<Accounts> createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Accounts"),
        ),
        body: Material(
          color:  new Color(0xfffce9d4),
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context,index)  => DisplayAccount(index) ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xffA52A2A),
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }

  Widget DisplayAccount(int index) {
      return Padding(padding: EdgeInsets.only(left: 10,right: 10,top:5),
           child: Card(
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(12.0), // Adjust the radius for rounded corners
             ),
             elevation: 10,
             child: Padding(
               padding: const EdgeInsets.only(top: 10,bottom: 10),
               child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color(0xffA52A2A),
                    child: Icon(Icons.lock,size: 36,),),
                  title: Text("gmail.com"),
                 subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                        Text("Username",textDirection: TextDirection.ltr,),
                        Text("*****",textDirection: TextDirection.ltr,)
                    ],
                 ),
                 trailing: Icon(Icons.delete,size: 24,),
               ),
             ),
           ),
      );
  }
}
import 'package:flutter/material.dart';
class AddEditAccount extends StatefulWidget {
  const AddEditAccount({super.key});
  @override
  State<AddEditAccount> createState() => _AddEditAccountState();
}

class _AddEditAccountState extends State<AddEditAccount> {
  String ScreenTitle = "Add Account";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(ScreenTitle),),
        body: Material(
          color:  new Color(0xfffce9d4),
          child:  Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return SizedBox(
                    height: constraints.maxHeight * 0.70,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              ScreenTitle,
                              textAlign: TextAlign.center,
                              textScaleFactor: 2.0,
                              textDirection: TextDirection.ltr,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                labelText: 'Web/app name',
                                hintText: 'Required',
                                border: OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.web)
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                labelText: 'Username/Email/Mobile',
                                hintText: 'Required',
                                border: OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.add_circle)
                              ),
                            ),
                            TextField(
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                labelText: 'Enter Password',
                                hintText: 'Password',
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.password)
                              ),
                            ),
                            SizedBox(
                              width: constraints.maxWidth,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10, bottom: 10),
                                child: MaterialButton(
                                  color: Color(0xffeb6664),
                                  textColor: Color(0xffffffff),
                                  onPressed: () {},
                                  child: Text("Add"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

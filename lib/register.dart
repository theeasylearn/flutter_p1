import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() {
    _RegisterState state = new _RegisterState();
    return state;
  }
}

class _RegisterState extends State<Register> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    print("count = $count");
    count++;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Register"),
        ),
        body: Material(
          color:  new Color(0xfffce9d4),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Center(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  double cardHeight = constraints.maxHeight * 0.80;
                  return SingleChildScrollView(
                    child: SizedBox(
                      height: cardHeight,
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.white.withOpacity(0.5),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Sign in",
                                textScaleFactor: 2.0,
                                textDirection: TextDirection.ltr,
                              ),
                              TextField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  labelText: 'Enter Email Address',
                                  hintText: 'your email address',
                                  border: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.email)
                                ),
                              ),
                              TextField(
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  labelText: 'Enter mobile',
                                  hintText: 'your 10 digit mobile no',
                                  border: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.call)
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
                              TextField(
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  labelText: 'Enter Confirm password',
                                  hintText: 'Confirm password',
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
                                    child: Text("Register"),
                                  ),
                                ),
                              ),
                            ],
                          ),
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

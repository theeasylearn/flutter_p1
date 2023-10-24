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
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Center(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  double cardHeight = constraints.maxHeight * 0.60;
                  return SizedBox(
                    height: cardHeight,
                    child: SingleChildScrollView(
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.white.withOpacity(0.7),
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
                                ),
                              ),
                              TextField(
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  labelText: 'Enter mobile',
                                  hintText: 'your 10 digit mobile no',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              TextField(
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  labelText: 'Enter Password',
                                  hintText: 'Password',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              TextField(
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  labelText: 'Enter Confirm password',
                                  hintText: 'Confirm password',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: MaterialButton(
                                  color: Color(0xffeb6664),
                                  textColor: Color(0xffffffff),
                                  onPressed: () {},
                                  child: Text("Register"),
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

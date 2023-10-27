import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Material(
          color:  new Color(0xfffce9d4),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Center(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  double cardHeight = constraints.maxHeight * 0.60;
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
                                "Login",
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
                                    child: Text("Login"),
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

import 'package:flutter/material.dart';
import 'package:project1/accounts.dart';
import 'logon.dart';
import 'register.dart';
void main() {
  runApp(Accounts());
}
class WelcomeScreen extends StatelessWidget {

  double ScreenHeight = 0.0,ScreenWidth = 0;
  @override
  Widget build(BuildContext context) {
    ScreenHeight = MediaQuery.of(context).size.height - 20;
    ScreenWidth = MediaQuery.of(context).size.width;
    return Material(
      color:  new Color(0xfffce9d4),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: ScreenHeight / 2,
              width: ScreenWidth,
              child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50), // Adjust the value to change the roundness of the corners
                    image: DecorationImage(
                      image: AssetImage("images/home.jpg"), // Replace with the path to your image
                      fit: BoxFit.cover, // You can adjust the fit as needed
                    ),
                  )
              )
            ),
            SizedBox(
              height: ScreenHeight / 4,
              width:  ScreenWidth,
              child: FittedBox(
                  child: Text("Keep your all Account Username &\npassword safe & Secure with us",
                    textAlign: TextAlign.center,),
              ),
            ),
            SizedBox(
              height: ScreenHeight / 4,
              width:  ScreenWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(flex:1,child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                        color: new Color(0xffeb6664),
                        textColor: new Color(0xffffffff),
                        onPressed: () {}, child: Text("Register")),
                  )),
                  TextField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      labelText: 'Enter Password',
                      hintText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  Expanded(flex:1,child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                        color: new Color(0xffeb6664),
                        textColor: new Color(0xffffffff),
                        onPressed: () {}, child: Text("Login")),
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'signup.dart';
import 'package:uts/home.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/signup':(BuildContext context) => new SignupPage()
      },
      home: login(),
    );
  }
}

class login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<login> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.cyan,
                  shape: BoxShape.circle
              ),
              child: Center(
                child: Icon(Icons.person,size: 40, color: Colors.white,),
              ),
            ),
            SizedBox(height: 10,),

            Text("Selamat datang, Silahkan Login", style: TextStyle(fontSize: 20, color: Colors.black87),),

            SizedBox(height: 10,),

            TextFormField(

              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black87),
                ),
                prefixIcon: Icon(Icons.person,size: 40,),
                hintText: "MASUKAN EMAIL",
                hintStyle: TextStyle(color: Colors.cyan),
                labelText: "EMAIL",
                labelStyle: TextStyle(color: Colors.cyan),
              ),
            ),

            SizedBox(height: 10,),

            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black87),
                ),
                prefixIcon: Icon(Icons.lock,size: 40,),
                hintText: "MASUKAN PASSWORD",
                hintStyle: TextStyle(color: Colors.cyan),
                labelText: "PASSWORD",
                labelStyle: TextStyle(color: Colors.cyan),
              ),
            ),
            SizedBox(height: 10,),

            MaterialButton(
              minWidth: double.infinity,
              height: 60,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepad()));
              },
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Colors.black87
                  ),
                  borderRadius: BorderRadius.circular(50)
              ),
              child: Text(
                "Login",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18
                ),
              ),
            ),
            SizedBox(height: 20,),

            MaterialButton(
              minWidth: double.infinity,
              height: 60,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupPage()));
              },
              color: Colors.cyan,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
              ),
              child: Text(
                "Sign up",
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                    fontSize: 18
                ),
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

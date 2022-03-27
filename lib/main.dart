import 'package:flutter/material.dart';
import 'package:uts/login.dart';
import 'package:uts/signup.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Resep Makanan", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              SizedBox( height: 20,),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                child: Center(
                  child: Icon(Icons.person, size: 100, color: Colors.cyan,),
                ),
              ),
              Column(
                children: <Widget> [
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
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
                  SizedBox(height: 20),
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
              )



            ],
          ),
        ),
      ),
    );
  }
}
    
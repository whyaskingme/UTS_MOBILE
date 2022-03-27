import 'package:flutter/material.dart';
import 'package:uts/homescreen.dart';

class Homepad extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SizedBox(height: 40),
            Text.rich(TextSpan(
                text: 'HOME',
                style: TextStyle(fontWeight: FontWeight.bold),

            ),
              style: TextStyle(fontSize: 32),
            ),
            SizedBox(height: 30),
            TextField(decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 10),
              prefixIcon: Icon(Icons.search, size: 50),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),),
              hintText: 'Search',
            ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 350,
              child: GridView.count(
                padding: EdgeInsets.only(top: 50.0),
                crossAxisCount: 2,
                childAspectRatio: 1.491,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  IconButton(icon: Icon(Icons.rice_bowl),iconSize: 100, onPressed: () {}),
                  IconButton(icon: Icon(Icons.fastfood),iconSize: 100, onPressed: () {}),
                  IconButton(icon: Icon(Icons.emoji_food_beverage),iconSize: 100, onPressed: () {}),
                  IconButton(icon: Icon(Icons.format_list_bulleted),iconSize: 100, onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> home()));
                  }),
                ],
              ),
            ),
            SizedBox(height: 200),
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(icon: Icon(Icons.home),iconSize: 50, onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepad()));
                }),
                IconButton(icon: Icon(Icons.favorite),iconSize: 50, onPressed: () {}),
                IconButton(icon: Icon(Icons.restore_outlined),iconSize: 50, onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> home()));
                }),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
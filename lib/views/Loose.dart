import 'package:flutter/material.dart';

class Loose extends StatefulWidget {
  const Loose({super.key});

  @override
  State<Loose> createState() => _LooseState();
}

class _LooseState extends State<Loose> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.white,
                      Colors.tealAccent.withOpacity(0.3),
                    ]),
              ),
              child:  Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   const  Text("Oh Sorry !" , style:  TextStyle(fontSize: 52,fontWeight: FontWeight.bold),),
                    const Text("Your ans is Incorrect " , style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500),),
                   const  Text("Correct ans : Android Development " , style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),),
                    Image.asset("images/sad.png"),
                    SizedBox(height: 20,),
                    ElevatedButton(onPressed: (){}, child:const Text(" Return to Questions ")),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


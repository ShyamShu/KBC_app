import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';
import 'dart:math';

class Win extends StatefulWidget {
  const Win({super.key});

  @override
  State<Win> createState() => _WinState();
}

class _WinState extends State<Win> {
  
  late ConfettiController confettiController;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      initController();
    });
    confettiController.play();
  }
  void initController() {
    confettiController =
        ConfettiController(duration: const Duration(seconds: 1));
  }
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Congraulations" , style:  TextStyle(fontSize: 52,fontWeight: FontWeight.bold),),
                  Text("You earned total 50 Points " , style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500),),
                  Text("Quiz Name = Java Basics " , style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),),
                  Image.asset("images/smiile.png"),
                ],
              ),
            ),
            buildConfettieWidget(confettiController, pi/2),
          ],
        ),
      ),
    );
  }

  Align buildConfettieWidget(Controller , double blastDirection)
  {
    return Align(alignment: Alignment.topCenter,
    child:ConfettiWidget(
      maximumSize: Size(60,30),
        shouldLoop: true,
        strokeWidth: 2.3,
        blastDirection: blastDirection,
        blastDirectionality: BlastDirectionality.explosive,
        maxBlastForce: 20,
        minBlastForce: 5,
        confettiController: Controller,
      numberOfParticles: 15,
      gravity: 0.8,
    ),

    );
  }
}

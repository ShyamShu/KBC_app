import 'package:flutter/material.dart';
import 'package:playkbc/widget/sideDrawer.dart';

class QuizIntro extends StatefulWidget {
  String Thumbnail = "";
  String about = "";
  String duration = "";
  String topics = "";
  String quizName = "";
  QuizIntro({required this.Thumbnail , required this.about , required this.duration , required this.quizName , required this.topics});

  @override
  State<QuizIntro> createState() => _QuizIntroState();
}

class _QuizIntroState extends State<QuizIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButton(child: const Text("Start Quizz " , style: TextStyle(fontSize: 20),) ,onPressed: (){},),
      appBar: AppBar(
        title: const Text(
          "KBC - The Quiz APP",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        leading: Icon(Icons.arrow_back),

      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(20),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.quizName,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Image.network(
                widget.Thumbnail,
                fit: BoxFit.cover,
                height: 270,
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child:  Column(
                  children: [
                    const Row(
                      children: [
                        Icon((Icons.topic_outlined)),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Related To :- ",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                    Text(
                      widget.topics,
                      style:const TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     const Row(
                      children: [
                        Icon((Icons.timer)),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Duration :- ",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                    Text(
                      "${widget.duration} Minutes",
                      style: const  TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child:  Column(
                  children: [
                    const Row(
                      children: [
                        Icon((Icons.details_outlined)),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Quiz Details :- ",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                    Text(
                      widget.about
                      ,style:const TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

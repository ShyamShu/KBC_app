
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playkbc/widget/LifeLineSideDrawer.dart';

class QuestionView extends StatefulWidget {
  const QuestionView({super.key});

  @override
  State<QuestionView> createState() => _QuestionViewState();
}

class _QuestionViewState extends State<QuestionView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //decoration: const BoxDecoration(image: DecorationImage(image:AssetImage("images/background.png"),fit: BoxFit.cover)),
      child: Scaffold(

        appBar: AppBar(
          title: const Text("Java Basics", style: TextStyle(fontSize: 28 , fontWeight: FontWeight.bold),),
          centerTitle: true,
          backgroundColor: Colors.tealAccent.withOpacity(0.2),
          
        ),
        drawer:  const LifeLineDrawer(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: ElevatedButton(onPressed: (){}, child: Text("Quit Game " ,style: TextStyle(fontSize: 20))),


        body: Container(
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
             const  SizedBox(
                width: 200,
                height: 200,
                child: Stack(
                  fit:StackFit.expand,
                  children: [
                    CircularProgressIndicator(strokeWidth: 10,strokeAlign: 5, backgroundColor: Colors.green,),
                    Center(child: Text("46",style: TextStyle(fontSize: 38,fontWeight: FontWeight.bold , color: Colors.green),)),
                  ],
                ),
              ),
              SizedBox(height: 50,)  ,
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.tealAccent.withOpacity(0.0),
                  borderRadius: BorderRadius.circular(20),
                ),
                child:const Text("Java is good for web development as well as ..............", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                ),
             const SizedBox(height: 28,),
              Container(
                width: MediaQuery.of(context).size.width,
                margin:  const EdgeInsets.symmetric(horizontal: 20),
                padding:const  EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(28),
                ),
                child:const Row(
                  children: [
                    Text("A.", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                     SizedBox(width: 10,),
                     Text("Android Development", style: TextStyle(fontSize: 24), textAlign: TextAlign.center,),
                  ],
                ),
              ),
              const  SizedBox(height: 18,),
              Container(
                width: MediaQuery.of(context).size.width,
                padding:const EdgeInsets.all(20),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(28),
                ),
                child:const Row(
                  children: [
                    Text("B.", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                    SizedBox(width: 10,),
                     Text("Cyber Security", style: TextStyle(fontSize: 24), textAlign: TextAlign.center,),
                  ],
                ),
              ),
             const SizedBox(height: 18,),
              Container(
                width: MediaQuery.of(context).size.width,
                margin:  const EdgeInsets.symmetric(horizontal: 20),
                padding:const  EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.yellow.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(28),
                ),
                child: const Row(
                  children: [
                    Text("C.", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                    SizedBox(width: 10,),
                     Text("Machine Learning", style: TextStyle(fontSize: 24), textAlign: TextAlign.center,),
                  ],
                ),
              ),
             const SizedBox(height: 18,),
              Container(
                width: MediaQuery.of(context).size.width,
                margin:const EdgeInsets.symmetric(horizontal: 20),padding:const  EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blueAccent.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(28),
                ),
                child:const Row(
                  children: [
                    Text("D.", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                    SizedBox(width: 10,),
                     Text("Data Science", style: TextStyle(fontSize: 24), textAlign: TextAlign.center,),
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

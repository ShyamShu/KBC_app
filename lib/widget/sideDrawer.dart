import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:playkbc/service/auth.dart';
import 'package:playkbc/views/Profile.dart';
import 'package:playkbc/views/home.dart';
import 'package:playkbc/views/login.dart';
class SideNav extends StatelessWidget {
  String name;
  String money;
  String rank;
  String proUrl;
  String level;
  SideNav( @required this.name ,@required this.money ,@required this.rank , @required this.proUrl ,@required this.level);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Material(
          color: Colors.white,
          child: ListView(
            // padding:  EdgeInsets.symmetric(horizontal: 20),
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile(name: name, money: money,proUrl: proUrl,rank: rank,level: level,)));
                },
                child: Column(
                  children: [
                    Container(
                      padding:const EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
                      child:  Row(children: [

                        CircleAvatar(radius: 30, backgroundColor: Colors.cyanAccent,backgroundImage: NetworkImage(proUrl)  ,),
                        const SizedBox(width: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(name,style:const  TextStyle(color: Colors.black , fontSize: 20 , fontWeight: FontWeight.bold),),
                            const SizedBox(height: 10,),
                            Text("Points :$money", style: const  TextStyle(color: Colors.black , fontSize: 15),)
                          ],
                        )
                      ],),

                    ),
                  ],
                ),
              ),
              Container(
                padding:const EdgeInsets.only(left: 25),
                child: Text("LeaderBoard - $rank  Rank", style:const TextStyle(color: Colors.black ,fontSize: 19,fontWeight: FontWeight.bold,)),

              ),
              const SizedBox(height: 35,),
              listItem(
                  context: context,
                  path : MaterialPageRoute(builder: (BuildContext context)=>const  Home()),

                  label : "DAILY QUIZ",
                  icon : Icons.quiz
              ),
              listItem(
                  context: context,
                  path : MaterialPageRoute(builder: (BuildContext context)=> const  Home()),

                  label : "Leaderboard",
                  icon : Icons.leaderboard
              ),
              listItem(
                  context: context,
                  path : MaterialPageRoute(builder: (BuildContext context)=> const  Home()),
                  label : "How To Use",
                  icon : Icons.question_answer
              ),
              listItem(
                  context: context,
                  path : MaterialPageRoute(builder: (BuildContext context)=> const Home()),
                  label : "About Us",
                  icon : Icons.face
              ),listItem(
                  context: context,
                  path : MaterialPageRoute(builder: (BuildContext context)=>  const Login()),
                  label : "Logout Us",
                  icon : Icons.logout
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget listItem({
    required String label,
    required IconData icon,
    required BuildContext context,
    required MaterialPageRoute  path ,

  }){
    final color = Colors.black;
    final hovercolor = Colors.black;

    return ListTile(
      leading: Icon(icon , color: color,),
      hoverColor: hovercolor,
      title: Text(label , style: TextStyle(color: color)),
      onTap: ()async{
        await signOut();
        Navigator.pushReplacement(context, path);
      },
    );
  }
}


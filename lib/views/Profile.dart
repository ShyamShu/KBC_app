
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Profile extends StatefulWidget {
  String name = "";
  String money = "";
  String rank = "";
  String proUrl ="";
  String level = "";
  Profile({
    super.key,
    required this.name,
    required this.money,
    required this.proUrl,
    required this.rank,
    required this.level
  });

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.share)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.person_add)),
        ],
        title:const Text(" Profile View ",style: TextStyle(fontWeight: FontWeight.w500 ),),
        centerTitle: true,
        backgroundColor: Colors.tealAccent.withOpacity(0.9),
      ),
      body: Column(
        children: [
          Container(
            height: 350,
            decoration: BoxDecoration(
                color: Colors.tealAccent.withOpacity(0.9),
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(33),  bottomRight: Radius.circular(33))
            ),
            child:  Column(
              children: [
                CircleAvatar(backgroundImage: NetworkImage(widget.proUrl ,),radius: 60  ,backgroundColor: Colors.black,),
                const SizedBox(height: 12,),
                Text(widget.name,style:const TextStyle(fontWeight: FontWeight.bold , fontSize: 28),),
                const SizedBox(height: 28,),
                const Divider(thickness: 1,endIndent: 20,indent: 20,),
                const SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(widget.money,style: const TextStyle(fontSize: 39,fontWeight: FontWeight.w400),),
                        const Text("Points",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      children: [
                        Text(widget.rank,style: const TextStyle(fontSize: 39,fontWeight: FontWeight.w400),),
                        const Text("Rank",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 18,),

          const Text("Certification ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),textAlign: TextAlign.center,),
          const SizedBox(height: 18,),

          SizedBox(
            height: 450,
            child: ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context,index) => Divider(thickness: 2,color: Colors.tealAccent.withOpacity(0.4),),
              itemCount: 10,
                itemBuilder: (context , index){
                return ListTile(
                  title: const Row(
                    children: [
                      CircleAvatar(backgroundColor: Colors.black,radius: 30, backgroundImage: NetworkImage("https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),),
                      SizedBox(width: 6,),
                      Text("Shyam Shukla",style:TextStyle(fontSize: 24, fontWeight: FontWeight.w400) ,textAlign: TextAlign.center,),
                    ],
                  ),
                  leading:Text("#${index+1}"),
                  trailing: const Text("20000 ",style: TextStyle(fontSize: 20),),

                );
            }),
          )
        ],
      ),
    );
  }
}

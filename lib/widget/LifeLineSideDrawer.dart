import 'package:flutter/material.dart';

class LifeLineDrawer extends StatefulWidget {
  const LifeLineDrawer({super.key});

  @override
  State<LifeLineDrawer> createState() => _LifeLineDrawerState();
}

class _LifeLineDrawerState extends State<LifeLineDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white,
                  Colors.tealAccent.withOpacity(0.0),
                ]),
          ),
          child: Column(
            children: [
              Container(
                child: const Text(
                  "Life Line",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
             const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Card(
                        elevation: 12,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32)),
                        child: Container(
                            padding: const EdgeInsets.all(8),
                            //margin:  const EdgeInsets.symmetric(horizontal: 8 , vertical: 17),
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                            ),
                            child:const Icon(
                              Icons.people,
                              size: 25,
                              color: Colors.white,
                            )),
                      ),
                      const Text(
                        "Audience \n Poll",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Column(
                    children: [
                      Card(
                        elevation: 12,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32)),
                        child: Container(
                            padding: const EdgeInsets.all(8),
                            //margin:  const EdgeInsets.symmetric(horizontal: 8 , vertical: 17),
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                            ),
                            child:const Icon(
                              Icons.people,
                              size: 25,
                              color: Colors.white,
                            )),
                      ),
                      const Text(
                        "Audience \n Poll",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Column(
                    children: [
                      Card(
                        elevation: 12,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32)),
                        child: Container(
                            padding: const EdgeInsets.all(8),
                            //margin:  const EdgeInsets.symmetric(horizontal: 8 , vertical: 17),
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                            ),
                            child:const Icon(
                              Icons.people,
                              size: 25,
                              color: Colors.white,
                            )),
                      ),
                      const Text(
                        "Audience \n Poll",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Column(
                    children: [
                      Card(
                        elevation: 12,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32)),
                        child: Container(
                            padding: const EdgeInsets.all(8),
                            //margin:  const EdgeInsets.symmetric(horizontal: 8 , vertical: 17),
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                            ),
                            child:const Icon(
                              Icons.tv,
                              size: 25,
                              color: Colors.white,
                            )),
                      ),
                      const Text(
                        "Ask The \n Expert",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(color: Colors.black12, thickness: 1.5,indent: 5,),
              SizedBox(height: 20,),
              SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: SizedBox(
                  height: 700,
                  child: Container(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap:true,
                        itemCount: 20 ,itemBuilder: (context , index){
                      return ListTile(
                         onTap: (){},
                        leading: Text("${index+1}" , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                        title: Text("Question : ${index+1} " , style: TextStyle(fontSize: 22),),
                      );
                    }),
                  ),
                ),
              )
            ],
          ),
        
        ),
      ),
    );
  }
}

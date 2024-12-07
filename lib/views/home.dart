import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playkbc/service/home_fire.dart';
import 'package:playkbc/views/QuizIntro.dart';
import 'package:playkbc/widget/sideDrawer.dart';

import '../service/localDB.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String name = "";
  String money = "";
  String lead = "";
  String photoUrl = "";
  String level = "";
  late List quiz;

  getUserData() async {
    await LocalDB.getName().then((value) {
      setState(() {
        name = value.toString();
      });
    });
    await LocalDB.getMoney().then((value) {
      setState(() {
        money = value.toString();
      });
    });
    await LocalDB.getRank().then((value) {
      setState(() {
        lead = value.toString();
      });
    });
    await LocalDB.getUrl().then((value) {
      setState(() {
        photoUrl = value.toString();
      });
    });
    await LocalDB.getLevel().then((value) {
      setState(() {
        level = value.toString();
      });
    });
  }

  getQuiz() async {
    await homeFire.getQuizess().then((returnQuiz) {
      setState(() {
        quiz = returnQuiz;
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserData();
    getQuiz();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Color(0xFF784CEF),
        title: Text("KBC - The Quiz Game"),
        backgroundColor: Colors.tealAccent.withOpacity(0.2),
      ),
      drawer: SideNav(name, money, lead, photoUrl, level),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Colors.tealAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Column(
              children: [
                CarouselSlider(
                    items: [
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28),
                            image: const DecorationImage(
                                image: NetworkImage(
                                  "http://media.istockphoto.com/id/1500537333/photo/holographic-multicolored-cloud.jpg?s=2048x2048&w=is&k=20&c=NgvPz_CtOOz3TWsQqgQ25kOYdHCiynIw5fDRJNuoAUQ=",
                                ),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        height: 60,
                        width: 350,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: NetworkImage(
                                "http://media.istockphoto.com/id/531861190/photo/missing-puzzle-piece-problem-and-solution-white.jpg?s=2048x2048&w=is&k=20&c=scBq7JhUUyIlw135zVUibcexeeyg2fVJor2dKuJ_2i0="),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        //child: Text("POTD - Problem Of The Day" , style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      )
                    ],
                    options: CarouselOptions(
                        height: 170,
                        enableInfiniteScroll: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal)),
                const SizedBox(
                  height: 25,
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.pinkAccent,
                      radius: 40,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.pinkAccent,
                      radius: 40,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.pinkAccent,
                      radius: 40,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.pinkAccent,
                      radius: 40,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                // Java Programming =========================================
                Container(
                  height: 220,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => QuizIntro(Thumbnail:  quiz[2]['quiz_thumbnail'], about: quiz[2]['about_quiz'], quizName: quiz[2]['quiz_name'], duration: quiz[2]['duration'], topics: quiz[2]['topics'],)));
                            },
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Card(
                                    elevation: 8,
                                    shadowColor: Colors.white24,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(28)),
                                    child: Container(
                                      height: 190,
                                      child: Image.network(
                                        "https://5.imimg.com/data5/QQ/CT/AO/GLADMIN-25397883/selection-064-500x500.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    left: 0,
                                    right: 0,
                                    top: 0,
                                    bottom: 0,
                                    child: Container(
                                      color: Colors.white12,
                                    )),
                              ],
                            ),
                          )),
                      const SizedBox(
                        width: 8,
                      ),
                      Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => QuizIntro(Thumbnail:  quiz[4]['quiz_thumbnail'], about: quiz[4]['about_quiz'], quizName: quiz[4]['quiz_name'], duration: quiz[4]['duration'], topics: quiz[4]['topics'],)));
                            },
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Card(
                                    elevation: 8,
                                    shadowColor: Colors.white,
                                    child: Container(
                                      height: 190,
                                      child: Image.network(
                                        "https://images.unsplash.com/photo-1649180556628-9ba704115795?q=80&w=2062&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    left: 0,
                                    right: 0,
                                    top: 0,
                                    bottom: 0,
                                    child: Container(
                                      color: Colors.white10,
                                    )),
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
                // dbms , network ===================================================================================================================
                Container(
                  height: 220,
                  padding: const EdgeInsets.symmetric(horizontal: 13),
                  child: Row(
                    children: [
                      Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => QuizIntro(Thumbnail:  quiz[1]['quiz_thumbnail'], about: quiz[1]['about_quiz'], quizName: quiz[1]['quiz_name'], duration: quiz[1]['duration'], topics: quiz[1]['topics'],)));
                            },
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Card(
                                    elevation: 8,
                                    shadowColor: Colors.white24,
                                    child: Container(
                                      height: 190,
                                      child: Image.network(
                                        "https://static.javatpoint.com/fullformpages/images/dbms-full-form.png",
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    left: 0,
                                    right: 0,
                                    top: 0,
                                    bottom: 0,
                                    child: Container(
                                      color: Colors.white12,
                                    )),
                              ],
                            ),
                          )),
                      const SizedBox(
                        width: 8,
                      ),
                      Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => QuizIntro(Thumbnail:  quiz[6]['quiz_thumbnail'], about: quiz[6]['about_quiz'], quizName: quiz[6]['quiz_name'], duration: quiz[6]['duration'], topics: quiz[6]['topics'],)));
                            },
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Card(
                                    elevation: 8,
                                    shadowColor: Colors.white10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(28)),
                                    child: Container(
                                      height: 190,
                                      child: Image.network(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG9i9IraYCeQRAtOFXiuZUbPdVgucA42h-KwxywhgKUw5uyNkaZsw-cTJtn2NXPikbGwA&usqp=CAU",
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    left: 0,
                                    right: 0,
                                    top: 0,
                                    bottom: 0,
                                    child: Container(
                                      color: Colors.white10,
                                    )),
                              ],
                            ),
                          )),
                    ],
                  ),
                ),

                //microProcessors fundamentals===============================================
                Container(
                  height: 220,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => QuizIntro(Thumbnail:  quiz[3]['quiz_thumbnail'], about: quiz[3]['about_quiz'], quizName: quiz[3]['quiz_name'], duration: quiz[3]['duration'], topics: quiz[3]['topics'],)));
                            },
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Card(
                                    elevation: 8,
                                    shadowColor: Colors.white24,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(28)),
                                    child: Container(
                                      height: 190,
                                      child: Image.network(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0vaHjDLpqoVw5Zw4Ld_pddYV68paOUOQU_Q&s",
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    left: 0,
                                    right: 0,
                                    top: 0,
                                    bottom: 0,
                                    child: Container(
                                      color: Colors.white12,
                                    )),
                              ],
                            ),
                          )),
                      const SizedBox(
                        width: 8,
                      ),


                      Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => QuizIntro(Thumbnail:  quiz[7]['quiz_thumbnail'], about: quiz[7]['about_quiz'], quizName: quiz[7]['quiz_name'], duration: quiz[7]['duration'], topics: quiz[7]['topics'],)));
                            },
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Card(
                                    elevation: 8,
                                    shadowColor: Colors.white10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(28)),
                                    child: Container(
                                      height: 190,
                                      child: Image.network(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOQOC07xiZkILiGqR9PRM_nrEL5avK9kuYug&s",
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    left: 0,
                                    right: 0,
                                    top: 0,
                                    bottom: 0,
                                    child: Container(
                                      color: Colors.white10,
                                    )),
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
                //c c++ =================================================
                Container(
                  height: 220,
                  padding: const EdgeInsets.all(13),
                  child: Row(
                    children: [
                      Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => QuizIntro(Thumbnail:  quiz[5]['quiz_thumbnail'], about: quiz[5]['about_quiz'], quizName: quiz[5]['quiz_name'], duration: quiz[5]['duration'], topics: quiz[5]['topics'],)));
                            },
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Card(
                                    elevation: 8,
                                    shadowColor: Colors.white24,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(28)),
                                    child: Container(
                                      height: 190,
                                      child: Image.network(
                                        "https://plus.unsplash.com/premium_photo-1668902223894-053948883caa?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YyUyMHByb2dyYW1taW5nfGVufDB8fDB8fHww",
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    left: 0,
                                    right: 0,
                                    top: 0,
                                    bottom: 0,
                                    child: Container(
                                      color: Colors.white12,
                                    )),
                              ],
                            ),
                          )),
                      const SizedBox(
                        width: 8,
                      ),
                      Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => QuizIntro(Thumbnail:  quiz[0]['quiz_thumbnail'], about: quiz[0]['about_quiz'], quizName: quiz[0]['quiz_name'], duration: quiz[0]['duration'], topics: quiz[0]['topics'],)));
                            },
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Card(
                                    elevation: 8,
                                    shadowColor: Colors.white10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(28)),
                                    child: Container(
                                      height: 190,
                                      child: Image.network(
                                        "https://media.istockphoto.com/id/183341856/photo/c.webp?b=1&s=612x612&w=0&k=20&c=WhX5sqKHxEG4ymYLGVTPCnyOQFLxm8-KJS4fFkluIYQ=",
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    left: 0,
                                    right: 0,
                                    top: 0,
                                    bottom: 0,
                                    child: Container(
                                      color: Colors.white10,
                                    )),
                                const Padding(
                                  padding: EdgeInsets.all(38),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.lock,
                                          size: 37,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "Money = 500000",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.8,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

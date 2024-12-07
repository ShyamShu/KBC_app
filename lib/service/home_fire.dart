import 'package:cloud_firestore/cloud_firestore.dart';

class homeFire{

  static Future<List<Map<String,dynamic>>> getQuizess() async
  {
    List<Map<String,dynamic>> map =[];

    await FirebaseFirestore.instance.collection("Quizees").get().then((snapShot){
      snapShot.docs.forEach((quiz){
        Map<String,dynamic> quizall= quiz.data();
        quizall["quiz_id"] = quiz.reference.id;
            print(quiz.data());
            map.add(quiz.data());
      });
    });


    // await FirebaseFirestore.instance.collection("Quizees").doc("C++").collection("Questions").get().then((onValue){
    //   for (var doc in onValue.docs) {
    //     map.add(doc.data() as Map<String, dynamic>);
    //   }
    //
    //   print(map);
    //
    // });
    return map;
  }

}
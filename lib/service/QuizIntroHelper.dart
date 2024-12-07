
import 'package:cloud_firestore/cloud_firestore.dart';



class QuizIntroHelper{


  static Future<List<Map<String,dynamic>>>  getQuestion(String subject) async {
    List<Map<String,dynamic>> map =[];

    await FirebaseFirestore.instance.collection("Quizees").doc(subject).collection("Questions").get().then((onValue){
        for (var doc in onValue.docs) {
          map.add(doc.data() as Map<String, dynamic>);
        }

        print(map);

      });
    return map;

  }
}
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'localDB.dart';

class FireDB{
   final FirebaseAuth auth = FirebaseAuth.instance;
  createNewUser(String name , String email , String PhotoUrl , String uid)async
  {
     final User? user = auth.currentUser;
     if(await getUser())
       {
         print("You are already a user");
       }
     else{
       await FirebaseFirestore.instance.collection("Users").doc(user!.uid).set(
           {
             "name" : name,
             "email" :email,
             "photoUrl" :PhotoUrl,
             "Money" : "5000",
             "lead" : 0,
             "rank" : "NA"
           }).then((value) async {
         await LocalDB.saveMoney("0");
         await LocalDB.saveRank("0");
         await LocalDB.saveLevel("NA");
       });
     }

  }

  Future<bool> getUser() async {
    final User? user = await auth.currentUser;
    String data ="";
    await FirebaseFirestore.instance.collection("Users").doc(user!.uid).get().then((value)async {
      data = value.data().toString();
      await LocalDB.saveMoney("0");
      await LocalDB.saveRank("0");
      await LocalDB.saveLevel("NA");

    });
    if(data == "null")
      {
        return false;
      }
    else{
      await FirebaseFirestore.instance.collection("Users").doc(user.uid).get().then((value)async {
        data = value.data().toString();
        await LocalDB.saveMoney(value["money"]);
        await LocalDB.saveRank(value["rank"]);
        await LocalDB.saveLevel(value["level"]);

      });
      return true;

    }
  }
 }
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:playkbc/service/localDB.dart';
import 'fireDB.dart';



final FirebaseAuth auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

Future<User?> signWithGoogle() async{
  try{


    final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount!.authentication;

    final AuthCredential credential =  GoogleAuthProvider.credential(idToken: googleSignInAuthentication.idToken ,accessToken: googleSignInAuthentication.accessToken);

    final userCredential = await auth.signInWithCredential(credential);

    final User? user = userCredential.user;

    assert(!user!.isAnonymous);
    assert(await user!.getIdToken() != null);
    final User? currUser = await auth.currentUser;
    assert(currUser!.uid == user!.uid);
    print(user);
    await FireDB().createNewUser(user!.displayName.toString(), user.email.toString(), user.photoURL.toString(), user.uid);
    await LocalDB.saveUserID(user.uid);
    await LocalDB.saveName(user.displayName.toString());
    await LocalDB.saveUrl(user.photoURL.toString());


  }
  catch(e)
  {
    print("error");
    print(e);
  }
}

  Future<String> signOut() async{
  await googleSignIn.signOut();
  await auth.signOut();
  await LocalDB.saveUserID("Null");
  return "Success";
}
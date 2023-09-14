import 'package:firebase_auth/firebase_auth.dart';

class FireHelper{
  final FirebaseAuth auth=FirebaseAuth.instance;
  get user=>auth.currentUser;

  Future<String?> signup({required String email, required String pwd}) async{
    try {
      await auth.createUserWithEmailAndPassword(email: email, password: pwd);
      return null;
    }on FirebaseAuthException catch(e){
      return e.message;
    }
  }

  Future<String?> signin({required String email, required String pass}) async{
    try {
      await auth.signInWithEmailAndPassword(email: email, password: pass);
      return null;
    }on FirebaseAuthException catch(e) {
      return e.message;
    }
    }
  Future<void>signout()async{
    await auth.signOut();
  }
}
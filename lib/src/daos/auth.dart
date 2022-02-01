import 'package:firebase_auth/firebase_auth.dart';
import 'package:projects3/src/daos/user_dao.dart';
import 'package:projects3/src/models/user.dart';


class Auth{

  static Future<void> signIn(UserMadel user,String pass) async {
    await  FirebaseAuth.instance.signInWithEmailAndPassword(email: user.email, password: pass);
  }

  static Future<void> loguIn(UserMadel user,String pass ) async {
      UserCredential cr =  await  FirebaseAuth.instance.createUserWithEmailAndPassword(email: user.email, password: pass);
     await  UserDao.saveUser(cr.user!.uid, user);

  }

   static Future<void> loguOut(UserMadel user,String pass) async {
     await  FirebaseAuth.instance.signOut();
  }

  
}
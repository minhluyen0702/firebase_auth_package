import 'package:firebase_auth/firebase_auth.dart';
import 'package:user_repository/src/models/user_model.dart';

abstract class UserRepository {
  Stream<User?> get user;

  Future<MyUser> signUp(MyUser myUser, String password);

  Future<void> setUserData(MyUser myUser);

  Future<void> signIn(String email, String password);

  Future<void> logOut();
}
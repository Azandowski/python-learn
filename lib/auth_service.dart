// ignore: depend_on_referenced_packages
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Create a stream to listen to the authentication changes
  Stream<User?> get user => _auth.authStateChanges();
}

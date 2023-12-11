import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/auth_screen.dart';
import 'package:untitled/auth_service.dart';
import 'package:untitled/dashboard.dart';
import 'package:untitled/main_bloc.dart';

class SplashScreen extends StatelessWidget {
  final AuthService _authService = AuthService();

  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase Auth',
      home: StreamBuilder<User?>(
        stream: _authService.user,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            // Check if the snapshot has any data (user is logged in)
            if (snapshot.data != null) {
              return BlocProvider(
                create: (_) => MainBloc(),
                child: const Dashboard(),
              ); // User is authenticated, show main screen
            }
            return const AuthScreen();
          }
          return const Scaffold(
            body: Center(
              child:
                  CircularProgressIndicator(), // Show loading indicator while checking auth status
            ),
          );
        },
      ),
    );
  }
}

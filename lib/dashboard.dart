import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/dif_enum.dart';
import 'package:untitled/main_bloc.dart';
import 'package:untitled/question.dart';
import 'package:untitled/quiz.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<MainBloc, MainState>(
          builder: (_, state) => state.map(
            loading: (_) => const CircularProgressIndicator(),
            loaded: (state) => Column(
              children: [
                _LevelButton(
                  dif: Dif.advanced,
                  questionsCount: state.advancedQuestions.length,
                  text: 'Senior',
                  questions: state.advancedQuestions,
                ),
                _LevelButton(
                  dif: Dif.medium,
                  questionsCount: state.mediumLevel.length,
                  text: 'Middle',
                  questions: state.mediumLevel,
                ),
                _LevelButton(
                  dif: Dif.easy,
                  questionsCount: state.elementaryLevel.length,
                  text: 'Jun',
                  questions: state.elementaryLevel,
                ),
                Text(
                  state.advancedScore?.toString() ?? 's',
                  style: TextStyle(fontFamily: 'MR'),
                ),
                Text(
                  state.mediumScore?.toString() ?? 's',
                  style: TextStyle(fontFamily: 'MR'),
                ),
                Text(
                  state.elementaryScore?.toString() ?? 's',
                  style: TextStyle(fontFamily: 'MR'),
                ),
                GestureDetector(
                  onTap: () async {
                    return FirebaseAuth.instance.signOut();
                  },
                  child: Container(
                    child: Text(
                      "Logout",
                      style: TextStyle(fontFamily: 'MR'),
                    ),
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

class _LevelButton extends StatelessWidget {
  final String text;
  final int questionsCount;
  final List<QuizQuestion> questions;
  final Dif dif;

  const _LevelButton({
    required this.text,
    required this.questionsCount,
    required this.dif,
    required this.questions,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Quiz(
                questions: questions,
                dif: dif,
              ),
            ),
          );
          return context.read<MainBloc>().fetch();
        },
        child: Container(
          color: Colors.blue,
          child: Column(
            children: [
              Text(
                text,
                style: TextStyle(fontFamily: 'MR'),
              ),
              Text(
                'Сұрақтар саны: $questionsCount',
                style: TextStyle(fontFamily: 'MR'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

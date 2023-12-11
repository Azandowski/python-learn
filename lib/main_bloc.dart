import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled/auth_service.dart';
import 'package:untitled/question.dart';

part 'main_bloc.freezed.dart';

class MainBloc extends Cubit<MainState> {
  MainBloc() : super(const MainState.loading()) {
    fetch();
  }

  Future<void> fetch() async {
    final advancedQuestions = await _loadQuestions('advanced');
    final mediumQuestions = await _loadQuestions('medium');
    final easyQuestions = await _loadQuestions('easy');
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return;

    FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .get()
        .then((document) {
      var userData = document.data();
      if (userData == null) return;
      emit(
        MainState.loaded(
          advancedQuestions: advancedQuestions,
          mediumLevel: mediumQuestions,
          elementaryLevel: easyQuestions,
          elementaryScore: userData['easyScore'] as int?,
          mediumScore: userData['mediumScore'] as int?,
          advancedScore: userData['advancedScore'] as int?,
        ),
      );
    });

    emit(
      MainState.loaded(
        advancedQuestions: advancedQuestions,
        mediumLevel: mediumQuestions,
        elementaryLevel: easyQuestions,
      ),
    );
  }

  Future<List<QuizQuestion>> _loadQuestions(String path) async {
    String jsonString = await rootBundle.loadString('assets/quiz/$path.json');
    List<dynamic> jsonResponse = json.decode(jsonString);

    return jsonResponse.map((data) => QuizQuestion.fromJson(data)).toList();
  }
}

@freezed
abstract class MainState with _$MainState {
  const factory MainState.loading() = _MainLoadingState;

  const factory MainState.loaded({
    required List<QuizQuestion> advancedQuestions,
    required List<QuizQuestion> mediumLevel,
    required List<QuizQuestion> elementaryLevel,
    int? advancedScore,
    int? mediumScore,
    int? elementaryScore,
  }) = _MainLoadedState;
}

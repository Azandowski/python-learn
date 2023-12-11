import 'package:flutter/material.dart';
import 'package:untitled/dif_enum.dart';
import 'package:untitled/question.dart';
import 'package:untitled/quiz_completed.dart';

class Quiz extends StatefulWidget {
  final List<QuizQuestion> questions;
  final Dif dif;

  const Quiz({required this.questions, required this.dif, super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var currentQuestion = 0;
  int? currentSelect;

  var _score = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Color(0xff1e1e2c),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8),
                child: Text(
                  'Сұрақ ${currentQuestion + 1}/${widget.questions.length}',
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: "Montserrat"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  height: 1,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xff3dd1f2), Color(0xff3d88f2)])),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: SizedBox(
                  height: height / 4,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Text(
                          widget.questions[currentQuestion].question,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width / 20,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ...widget.questions[currentQuestion].options
                  .asMap()
                  .entries
                  .map(
                    (entry) => _Option(
                      onSelect: (e) => setState(() {
                        currentSelect = e;
                      }),
                      isSelected: currentSelect == entry.key,
                      option: entry.key,
                      optionText: entry.value,
                    ),
                  )
                  .toList(),
              SizedBox(
                height: height / 160,
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: GestureDetector(
                        onTap: () {
                          if (currentQuestion + 1 == widget.questions.length) {
                            ////Send score
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (_) => QuizCompleted(
                                  overallScore: widget.questions.length,
                                  yourScore: _score,
                                  dif: widget.dif,
                                ),
                              ),
                            );
                          } else {
                            setState(() {
                              if (currentSelect ==
                                  widget.questions[currentQuestion]
                                      .correctOptionIndex) {
                                _score++;
                              }
                              currentSelect = null;
                              currentQuestion++;
                            });
                          }
                        },
                        child: (currentSelect != null)
                            ? Container(
                                height: height / 15,
                                width: width / 4,
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xff3dd1f2),
                                        Color(0xff3d88f2)
                                      ],
                                    ),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(25),
                                        topLeft: Radius.circular(25),
                                        bottomRight: Radius.circular(25),
                                        bottomLeft: Radius.circular(25))),
                                child: Icon(
                                  Icons.navigate_next,
                                  color: Colors.white,
                                  size: width / 10,
                                ),
                              )
                            : SizedBox(
                                height: height / 15,
                                width: width / 4,
                              ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _Option extends StatelessWidget {
  final int option;
  final String optionText;
  final bool isSelected;
  final void Function(int) onSelect;

  const _Option({
    required this.option,
    required this.optionText,
    required this.onSelect,
    this.isSelected = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 4),
      child: GestureDetector(
        onTap: () => onSelect(option),
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Color.fromRGBO(37, 44, 74, 1),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(width: 3, color: Color.fromRGBO(33, 73, 107, 1)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: width / 1.325,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          optionText,
                          style: TextStyle(
                              color: Colors.white, fontSize: width / 25),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: Icon(
                  isSelected ? Icons.check_circle : Icons.panorama_fish_eye,
                  color: const Color.fromRGBO(31, 126, 235, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

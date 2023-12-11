import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled/dif_enum.dart';

class QuizCompleted extends StatefulWidget {
  final int yourScore;
  final int overallScore;
  final Dif dif;

  const QuizCompleted({
    required this.overallScore,
    required this.yourScore,
    required this.dif,
    super.key,
  });

  @override
  State<QuizCompleted> createState() => _QuizCompletedState();
}

class _QuizCompletedState extends State<QuizCompleted> {
  @override
  void initState() {
    super.initState();
    _submitResults();
  }

  Future<void> _submitResults() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return;

    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .update({widget.dif.key: widget.yourScore});
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(40, 42, 48, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: height / 2,
            width: width,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff45bf1f), Color(0xff67bf5a)]),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  'Құттықтаймыз!',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: width / 20,
                      color: Colors.white),
                ),
                Text(
                  'Сіз тесті аяқтадыңыз',
                  style: TextStyle(
                      fontFamily: 'MR',
                      fontSize: width / 35,
                      color: Colors.white),
                ),
                Flexible(
                  flex: 3,
                  child: Image(
                    image: const AssetImage('assets/images/testwon.png'),
                    height: height / 4,
                  ),
                ),
                Text(
                  'Нәтижеңіз сақталды',
                  style: TextStyle(
                      fontFamily: 'MR',
                      fontSize: width / 25,
                      color: Colors.white),
                ),
                SizedBox(
                  height: height / 40,
                ),
                const Icon(
                  Icons.check,
                  color: Colors.white70,
                  size: 15,
                ),
                SizedBox(
                  height: height / 40,
                ),
              ],
            ),
          ),
//          SizedBox(
//            height: height / 8,
//          ),
          Center(
            child: Text(
              '${widget.yourScore}/${widget.overallScore}',
              style: const TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(32.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).popUntil(
                  (Route<dynamic> route) => route.isFirst,
                );
              },
              child: Container(
                width: width,
                height: height / 14,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(16)),
                child: Center(
                    child: Text(
                  "Басты бет",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'MR',
                      fontSize: width / 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}

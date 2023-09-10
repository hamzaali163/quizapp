import 'package:flutter/material.dart';
import 'package:quizapp/components.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:quizapp/screentwo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({
    super.key,
  });

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  // final answerController = TextEditingController();
  // final String answer1 = '796,095 km²'.toString();
  // final String answer2 = '214,002 km²'.toString();
  // final String answer3 = '881,913 km²'.toString();
  // final String answer4 = '123,784 km².'.toString();
  final String questionanswer = '';
  String answera = '';
  String result = '';
  // answerchosen(answer) {
  //   answer = answer1;
  // }

  navigateToScreenTwo(result) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('answera', result);
    setState(() {
      answera = result;
    });
    // ignore: use_build_context_synchronously
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ScreenTwo(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 78, 13, 151),
        title: const Text('Question 1'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 30,
      ),
      backgroundColor: const Color.fromARGB(255, 78, 13, 151),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // const Text(
          //   'What is the total area\n       of Pakistan ?',
          //   style: TextStyle(color: Colors.white, fontSize: 30, height: 1.3),
          //
          // ),

          const Questiontitle(
            Rowtitle: 'What is the total area',
            Rowtitle2: 'of Pakistan',
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: components(
              buttonTitle: '796,095 km²',

              onpress: () => navigateToScreenTwo(result = '796,095 km²'),
              //   answer1: '796,095',
              //answer: answer1,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          components(
            buttonTitle: '214,002 km²',
            onpress: () => navigateToScreenTwo(result = '214,002 km²'),
            //  answer1: '214,002',
          ),
          const SizedBox(
            height: 15,
          ),
          components(
            buttonTitle: '881,913 km²',
            onpress: () => navigateToScreenTwo(result = '881,913 km²'),
          ),
          const SizedBox(
            height: 15,
          ),
          components(
            buttonTitle: '123,784 km²',
            onpress: () => navigateToScreenTwo(result = '123,784 km²'),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}

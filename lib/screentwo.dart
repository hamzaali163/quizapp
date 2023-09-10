import 'package:flutter/material.dart';
import 'package:quizapp/components.dart';
import 'package:quizapp/Screenthree.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  String answerb = '';
  String answerb2 = '';
//answers:

  String answerb3 = 'Punjab';
  String answerb4 = 'Sindh';
  String answerb5 = 'Balochistan';
  String answerb6 = 'KPK';
  String selectedanswer = '';

  // getdata(String resultb) async {
  //   SharedPreferences sp = await SharedPreferences.getInstance();
  //   sp.setString('answerb', answerb3);
  // }

  void navigatescreen(selectedanswer) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('answerb', selectedanswer);
    // sp.setString('answerb', answerb4);
    // sp.setString('answerb', answerb5);
    // sp.setString('answerb', answerb6);
    setState(() {
      answerb = selectedanswer;
    });
    // ignore: use_build_context_synchronously
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const ScreenThree()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 78, 13, 151),
        title: const Text('Question 2'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 30,
      ),
      backgroundColor: const Color.fromARGB(255, 78, 13, 151),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Questiontitle(
            Rowtitle: 'What is the largest province of',
            Rowtitle2: 'Pakistan by area?',
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
              child: components(
            buttonTitle: 'Punjab',
            onpress: () => navigatescreen(selectedanswer = 'Punjab'),
          )),
          const SizedBox(
            height: 15,
          ),
          components(
            buttonTitle: 'Sindh',
            onpress: () => navigatescreen(selectedanswer = 'Sindh'),
          ),
          const SizedBox(
            height: 15,
          ),
          components(
            buttonTitle: 'Balochistan',
            onpress: () => navigatescreen(selectedanswer = 'Balochistan'),
          ),
          const SizedBox(
            height: 15,
          ),
          components(
            buttonTitle: 'KPK',
            onpress: () => navigatescreen(selectedanswer = 'KPK'),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}

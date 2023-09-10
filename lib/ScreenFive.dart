import 'package:flutter/material.dart';
import 'package:quizapp/Resultscreen.dart';
import 'package:quizapp/components.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenFive extends StatefulWidget {
  const ScreenFive({
    super.key,
  });

  @override
  State<ScreenFive> createState() => _ScreenFiveState();
}

class _ScreenFiveState extends State<ScreenFive> {
  // String answer = '';
  String resultanswer = '';
  String answere = '';

  void navigatescreen(resultanswer) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('answere', resultanswer);
    setState(() {
      answere = resultanswer;
    });

    // ignore: use_build_context_synchronously
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const ResultsScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 78, 13, 151),
        title: const Text('Question 5'),
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
            Rowtitle: 'Largest province of Pakistan ',
            Rowtitle2: 'by population',
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
              child: components(
            buttonTitle: 'Punjab',
            onpress: () => navigatescreen(resultanswer = 'Punjab'),
          )),
          const SizedBox(
            height: 15,
          ),
          components(
            buttonTitle: 'Sindh',
            onpress: () => navigatescreen(resultanswer = 'Sindh'),
          ),
          const SizedBox(
            height: 15,
          ),
          components(
            buttonTitle: 'KPK',
            onpress: () => navigatescreen(resultanswer = 'KPK'),
          ),
          const SizedBox(
            height: 15,
          ),
          components(
            buttonTitle: 'Balochistan',
            onpress: () => navigatescreen(resultanswer = 'Balochistan'),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}

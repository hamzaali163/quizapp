import 'package:flutter/material.dart';
import 'package:quizapp/ScreenFive.dart';
import 'package:quizapp/components.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  String answerd = '';
  String selectedanswer = '';

  void navigatescreen(selectedanswer) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('answerd', selectedanswer);
    setState(() {
      answerd = selectedanswer;
    });
    // ignore: use_build_context_synchronously
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const ScreenFive()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 78, 13, 151),
        title: const Text('Question 4'),
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
          //   'How many times has\n      Martial law been\n         imposed in \n           Pakistan? ',
          //   style: TextStyle(color: Colors.white, fontSize: 30, height: 1.3),
          // ),
          Questiontitle(
            Rowtitle: 'How many times has Martial ',
            Rowtitle2: 'been imposed in Pakistan',
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
              child: components(
            buttonTitle: '5',
            onpress: () => navigatescreen(selectedanswer = '5'),
          )),
          const SizedBox(
            height: 15,
          ),
          components(
            buttonTitle: '4',
            onpress: () => navigatescreen(selectedanswer = '4'),
          ),
          const SizedBox(
            height: 15,
          ),
          components(
            buttonTitle: '6',
            onpress: () => navigatescreen(selectedanswer = '6'),
          ),
          const SizedBox(
            height: 15,
          ),
          components(
            buttonTitle: '3',
            onpress: () => navigatescreen(selectedanswer = '3'),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}

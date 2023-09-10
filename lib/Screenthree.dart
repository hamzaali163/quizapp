import 'package:flutter/material.dart';
import 'package:quizapp/Screenfour.dart';
import 'package:quizapp/components.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  String answer = '';
  String answerc = '';
  String selectedanswer = '';
  void navigatescreen(String selectedanswer) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('answerc', selectedanswer);

    setState(() {
      answerc = selectedanswer;
    });

    // ignore: use_build_context_synchronously
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const ScreenFour()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 78, 13, 151),
        title: const Text('Question 3'),
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
          //   ' When did Bangladesh\n     get independence \n       from Pakistan?',
          //   style: TextStyle(color: Colors.white, fontSize: 30, height: 1.3),
          // ),
          const Questiontitle(
            Rowtitle: 'When did Bangladesh get ',
            Rowtitle2: 'independence from Pakistan',
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
              child: components(
            buttonTitle: '1971',
            onpress: () => navigatescreen(selectedanswer = '1971'),
          )),
          const SizedBox(
            height: 15,
          ),
          components(
            buttonTitle: '1965',
            onpress: () => navigatescreen(selectedanswer = '1965'),
          ),
          const SizedBox(
            height: 15,
          ),
          components(
            buttonTitle: '1975',
            onpress: () => navigatescreen('1975'),
          ),
          const SizedBox(
            height: 15,
          ),
          components(
            buttonTitle: '1974',
            onpress: () => navigatescreen('1974'),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}

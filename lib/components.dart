import 'package:flutter/material.dart';

class components extends StatelessWidget {
  final String buttonTitle;
  //  Function() onTap;
  final VoidCallback onpress;
  // for screen1 final String answer;
  final String answerb2;
  // final String answer3;
  // final String answer4;
  // final String answer5;
//  final TextEditingController controller;

  const components({
    super.key,
    required this.buttonTitle,
    required this.onpress,
    // for screenone this.answer = '',
    this.answerb2 = '',
    // this.answer3 = '',
    // this.answer4 = '',
    // this.answer5 = '',
    //  required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        height: 32,
        width: 330,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 33, 1, 95),
            borderRadius: BorderRadius.circular(25)),
        child: Center(
            child: Text(
          buttonTitle,
          style: const TextStyle(color: Colors.white, fontSize: 14),
        )),
      ),
    );
  }
}

class Questiontitle extends StatelessWidget {
  final String Rowtitle;
  final String Rowtitle2;

  const Questiontitle({super.key, this.Rowtitle = '', this.Rowtitle2 = ''});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Rowtitle,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Rowtitle2,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            )
          ],
        ),
      ],
    );
  }
}

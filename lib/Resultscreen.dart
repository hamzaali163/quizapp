import 'package:flutter/material.dart';
import 'package:quizapp/screenone.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ResultsScreen extends StatefulWidget {
//  for screen one final String answer;
  // final String answerb2;

  const ResultsScreen({
    Key? key,
    // required this.answerb2,
  }) : super(key: key);

  @override
  _ResultsScreenState createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  String correctanswer1 = '796,095 km²';
  String answera = '';
  String answerb = '';
  String answerc = '';
  String answerd = '';
  String answere = '';
  int counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

  Future<void> getdata() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    setState(() {});

    answera = sp.getString('answera') ?? "";
    answerb = sp.getString('answerb') ?? "";
    answerc = sp.getString('answerc') ?? "";
    answerd = sp.getString('answerd') ?? "";
    answere = sp.getString('answere') ?? "";
  }

  // bool istrue1 = true;

  // String answer = '';

  @override
  Widget build(BuildContext context) {
    bool isCorrectAnswera = answera.contains('796,095 km²');
    isCorrectAnswera ? counter++ : counter - 1;
//
    bool isCorrectAnswerb = answerb.contains('Balochistan');
    isCorrectAnswerb ? counter++ : counter - 1;
//
    bool isCorrectAnswerc = answerc.contains('1971');
    isCorrectAnswerc ? counter++ : counter - 1;
//
    bool isCorrectAnswerd = answerd.contains('5');
    isCorrectAnswerd ? counter++ : counter - 1;
//
    bool isCorrectAnswere = answere.contains('Punjab');
    isCorrectAnswere ? counter++ : counter - 1;

    // bool iscorrectAnswer;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 78, 13, 151),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.19,
              ),
              Center(
                child: Text(
                  " You answered $counter out of 5 questions\n                    correctly ",
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SafeArea(
                child: ReusableRow(
                  isCorrectAnswer: isCorrectAnswerb,
                  title: 'What is the total area of Pakistan ',
                  //     title2: 'pakistan?',
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ReusableRow(
                isCorrectAnswer: isCorrectAnswera,
                title: 'What is the largest province of Pakistan',
                //   title2: 'of Pakistan by area?',
              ),
              const SizedBox(
                height: 15,
              ),
              ReusableRow(
                isCorrectAnswer: isCorrectAnswerc,
                title: 'When did Bangladesh get independence\n from Pakistan',
                //   title2: 'independence from\n Pakistan',
              ),
              const SizedBox(
                height: 15,
              ),
              ReusableRow(
                isCorrectAnswer: isCorrectAnswerd,
                title:
                    'How many times has Martial law been\n imposed in Pakistan',
                //       title2: 'law been imposed\n in Pakistan?',
              ),
              const SizedBox(
                height: 15,
              ),
              ReusableRow(
                isCorrectAnswer: isCorrectAnswere,
                title: 'Largest Province of Pakistan',
                perfectanswer: 'Punjab',
              ),
              const SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScreenOne()));
                },
                child: Container(
                  height: 50,
                  width: 270,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                      child: Text(
                    '-> Restart Quiz',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ReusableRow extends StatelessWidget {
  final bool isCorrectAnswer;
  final String title;
  final String title2;

  final String perfectanswer;
  const ReusableRow({
    super.key,
    this.isCorrectAnswer = true,
    this.title = '',
    this.perfectanswer = '',
    this.title2 = '',
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        isCorrectAnswer
            ? const Icon(
                Icons.check_circle,
                size: 45,
                color: Colors.greenAccent,
              )
            : const Icon(
                Icons.close,
                size: 45,
                color: Colors.red,
              ),
        // Row(
        //   children: [
        //     Text(perfectanswer),
        //   ],
        // ),
        const SizedBox(
          width: 5,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(title2,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    )),
              ],
            )
          ],
        ),
      ],
    );
  }
}

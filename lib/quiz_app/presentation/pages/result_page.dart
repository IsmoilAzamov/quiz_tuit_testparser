import 'package:flutter/material.dart';
import 'package:quiz_tuit/quiz_app/presentation/pages/home_page.dart';

import 'testing_page.dart';



class ResultPage extends StatefulWidget {
  final int score;
  const ResultPage({Key? key, required this.score} ) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
              color: Colors.black38,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children:  [
                  Center(
                    child: SingleChildScrollView(
                      child: Card(
                        color: Colors.white70,
                        child: Text("Yuor Result is ${widget.score}%"),
                      ),
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>HomePage()));
                    },
                   child: const Text("Restart"))
                ],
              ),
            ),
    );
        }


}

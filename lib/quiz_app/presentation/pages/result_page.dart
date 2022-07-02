import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';


class ResultPage extends StatefulWidget {
  final int score;
  const ResultPage({Key? key, required this.score}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}
Color getColor(int score) {
  if (score < 60) {
    return Colors.red;
  } else if (score < 70) {
    return Colors.orange;
  } else if (score < 80) {
    return Colors.yellow;
  } else if (score < 90) {
    return Colors.green;
  } else {
    return Colors.blue;
  }

}
class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Result', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      bottomSheet: Container(
        height: 20,
        color: Colors.white,
        child: const Center(
          child: Text(
            '\u00a9 Fayruz Safarov and Ismoil A`zamov',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, ),
          ),
        ),
      ),
      body: Container(
        color: Colors.black38,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
        Center(
        child: Card(
          elevation: 30,
          color: getColor(widget.score),
          child: Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.white,
            ),

            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  color: Colors.white,
                  child: const Text(
                    "Imtihondan o`tish uchun minimal bal 60%",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ), //Text
                Card(
                  elevation: 10,
                  shadowColor: Colors.blue,
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      'Natija: ${widget.score}%',
                      style: const TextStyle(fontSize: 36,color: Colors.blue, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ), //Text
                TextButton(
                  onPressed: (){
                    Phoenix.rebirth(context);
                  },
                  child: Container(

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.yellow,
                    ),
                    padding: const EdgeInsets.all(14),
                    child: const Text(
                      'Restart Quiz',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),

              ], //<Widget>[]
            ),
          ),
        ), //Column
      )   ],
        ),
      ),
    );
  }
}

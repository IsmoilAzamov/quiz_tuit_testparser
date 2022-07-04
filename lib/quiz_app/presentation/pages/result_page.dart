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
    return Colors.lightGreen;
  } else {
    return Colors.lightGreenAccent;
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
      Center(

      child: Card(

        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        shadowColor: Colors.blueAccent,
        color: getColor(widget.score),
        child: Container(
          margin: const EdgeInsets.all(30),
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),

          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                color: Colors.white,
                child: const Text(
                  "Imtihondan o`tish uchun minimal ball: 60%",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ), //Text
              const SizedBox(height: 10,),
              Card(
                elevation: 10,
                color: getColor(widget.score),
                shadowColor: Colors.green[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    'Natija: ${widget.score}%',
                    style:  const TextStyle(fontSize: 36,color: Colors.white, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ), //Text

            ], //<Widget>[]
          ),
        ),

      ),
        //Column
      ) ,
          const SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.white,
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(

                primary: Colors.yellow,
                elevation: 20,
                shadowColor: Colors.green[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),

              ),
              onPressed: (){
                Phoenix.rebirth(context);
              },
              child: Container(
                padding: const EdgeInsets.all(20),

                child: const Text(
                  'Qayta Urinish',
                  style: TextStyle(color: Colors.lightBlueAccent, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_tuit/quiz_app/presentation/pages/result_page.dart';

import '../manager/main_view_model.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int? choosenAnswer;

    return BlocBuilder<ChoosenAnswerCubit, int>(
  builder: (context, answerID) {
    return BlocBuilder<SubmettedButtonCubit, bool>(
  builder: (context, isSubmetted) {
    return BlocBuilder<ResultCubit, int>(
  builder: (context, result) {
    return BlocBuilder<QuestionNumberCubit, int>(
        builder: (context, questionNumber) {
      return Center(
        child: Container(
            margin: const EdgeInsets.all(10),

            width: MediaQuery.of(context).size.width * 0.92,
            child:
                BlocBuilder<QuestionsListCubit, Map<String, Map<String, String>>>(
              builder: (context, questionList) {
                int answerOption=Random().nextInt(4+1);
                return !isSubmetted? SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "This is the Question ${questionNumber + 1}/${questionList.length}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        questionList["$questionNumber"]!["1"] ?? "",
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          choosenAnswer=2;
                          context.read<ChoosenAnswerCubit>().changeValue(2);
                        },
                        child: Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12, width: 1),
                            color: answerID == 2 ? Colors.black12 : Colors.white,
                            ),
                            padding: const EdgeInsets.all(18),
                            child: Text(
                              questionList["$questionNumber"]!["2"] ?? "",
                              style: const TextStyle(fontSize: 16),
                            )),
                      ),
                      InkWell(
                        onTap: () {choosenAnswer=3;
                          context.read<ChoosenAnswerCubit>().changeValue(3);

                        },
                        child: Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                          color: answerID == 3 ? Colors.black12 : Colors.white,
                              border: Border.all(color: Colors.black12, width: 1),
                            ),
                            padding: const EdgeInsets.all(18),
                            child: Text(
                              questionList["$questionNumber"]!["3"] ?? "",
                              style: const TextStyle(fontSize: 16),
                            )),
                      ),
                      InkWell(
                        onTap: () {choosenAnswer=4;

                          context.read<ChoosenAnswerCubit>().changeValue(4);
                        },
                        child: Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                          color: answerID == 4 ? Colors.black12 : Colors.white,
                              border: Border.all(color: Colors.black12, width: 1),
                            ),
                            padding: const EdgeInsets.all(18),
                            child: Text(
                              questionList["$questionNumber"]!["4"] ?? "",
                              style: const TextStyle(fontSize: 16),
                            )),
                      ),
                      InkWell(
                        onTap: () {choosenAnswer=5;
                          context.read<ChoosenAnswerCubit>().changeValue(5);
                        },
                        child: Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12, width: 1),
                              color: answerID == 5 ? Colors.black12 : Colors.white,
                            ),
                            padding: const EdgeInsets.all(18),
                            child: Text(
                              questionList["$questionNumber"]!["5"] ?? "",
                              style: const TextStyle(fontSize: 16),
                            )),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.max,
                        children: [

                               ElevatedButton(
                                  onPressed: () {
                                    if (choosenAnswer != null) {
                                      if (questionList["$questionNumber"]![
                                              "0"] ==
                                          choosenAnswer.toString()) {
                                        context
                                            .read<ResultCubit>()
                                            .incrementScore();
                                      }
                                    }
                                    context.read<SubmettedButtonCubit>().changeValue();
                                  },
                                  child: const Text("Submit")),
                        if(isSubmetted)
                          ElevatedButton(
                            onPressed: () {
                              if (choosenAnswer != null) {
                                if (questionList["$questionNumber"]![
                                "0"] ==
                                    choosenAnswer.toString()) {
                                  context
                                      .read<ResultCubit>()
                                      .incrementScore();
                                }
                              }
                              if(questionList.length>questionNumber+1) {
                                context.read<QuestionNumberCubit>().changeValue();
                              }else{

                                Navigator.pop(context);
                                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> ResultPage(score: result,)), (route)=>false);

                              }
                              context.read<ChoosenAnswerCubit>().changeValue(0);
                              answerID=0;
                            },
                            child: const Text("Next"),
                          ),

                    ]
                  ),
                    ],
                  ),
                )

                    :


                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        "This is the Question ${questionNumber + 1}/${questionList.length}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      questionList["$questionNumber"]!["1"] ?? "",
                      style: const TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(

                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12, width: 1),
                          color: questionList["$questionNumber"]!["0"]=="2"? Colors.green :choosenAnswer==2 ?Colors.red:Colors.white54,
                        ),
                        padding: const EdgeInsets.all(18),
                        child: Text(
                          questionList["$questionNumber"]!["2"] ?? "",
                          style: const TextStyle(fontSize: 16),
                        )),
                    Container(

                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          color: questionList["$questionNumber"]!["0"]=="3"? Colors.green :choosenAnswer==3?Colors.red:Colors.white54,
                          border: Border.all(color: Colors.black12, width: 1),
                        ),
                        padding: const EdgeInsets.all(18),
                        child: Text(

                          questionList["$questionNumber"]!["3"] ?? "",
                          style: const TextStyle(fontSize: 16),
                        )),
                    Container(

                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12, width: 1),
                          color: questionList["$questionNumber"]!["0"]=="4"? Colors.green :choosenAnswer==4?Colors.red:Colors.white54,
                        ),
                        padding: const EdgeInsets.all(18),
                        child: Text(
                          questionList["$questionNumber"]!["4"] ?? "",
                          style: const TextStyle(fontSize: 16),
                        )),
                    Container(

                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          color: questionList["$questionNumber"]!["0"]=="5"? Colors.green :choosenAnswer==5 ?Colors.red:Colors.white54,
                          border: Border.all(color: Colors.black12, width: 1),
                        ),
                        padding: const EdgeInsets.all(18),
                        child: Text(
                          questionList["$questionNumber"]!["5"] ?? "",
                          style: const TextStyle(fontSize: 16),
                        )),
                    Row(

                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.max,
                        children: [



                          ElevatedButton(
                            onPressed: () {
                              if(questionList.length>questionNumber+1) {
                                context.read<QuestionNumberCubit>().changeValue();
                                context.read<SubmettedButtonCubit>().changeValueToFalse();
                              }else{
                                Navigator.pop(context);
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> ResultPage(score: result,)), (route)=>false);

                              }
                              context.read<ChoosenAnswerCubit>().changeValue(0);
                              answerID=0;
                            },
                            child: const Text("Next"),
                          ),

                        ]
                    ),
                  ],
                );
              },
            )),
      );
    });
  },
);
  },
);
  },
);
  }
  checkRandom(int i){

  }
}

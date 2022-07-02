
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:quiz_tuit/quiz_app/presentation/manager/main_view_model.dart';
import 'package:quiz_tuit/quiz_app/presentation/pages/result_page.dart';

void main()  {


  runApp(Phoenix(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: MultiBlocProvider(
          providers: [
        BlocProvider(create: (context) => AutoNextCubit()),
            BlocProvider(create: (context) => QuestionNumberCubit()),
            BlocProvider(create: (context)=>QuestionsListCubit()),
            BlocProvider(create: (context)=>ResultCubit()),
            BlocProvider(create: (context)=>SubmettedButtonCubit()),
            BlocProvider(create: (context)=>ChoosenAnswerCubit()),
            BlocProvider(create: (context)=>SolvingTestCubit()),
            BlocProvider(create: (context)=>RandomListCubit()),
            BlocProvider(create: (context)=>CurrentQuestionCubit()),

      ], child: ResultPage(score: 12)),
      title: "Quotes",
    );
  }
}

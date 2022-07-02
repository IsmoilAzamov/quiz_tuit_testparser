import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_tuit/quiz_app/presentation/manager/main_view_model.dart';
import 'package:quiz_tuit/quiz_app/presentation/pages/home_page.dart';

void main() {
  runApp(const MyApp());
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
            BlocProvider(create: (context)=>ChoosenAnswerCubit())


      ], child: HomePage()),
      title: "Quotes",
    );
  }
}

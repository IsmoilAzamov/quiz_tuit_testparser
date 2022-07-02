import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_tuit/quiz_app/presentation/manager/main_view_model.dart';
import 'package:quiz_tuit/quiz_app/presentation/widgets/question_widget.dart';

class TestingPage extends StatefulWidget {

  const TestingPage({Key? key,}) : super(key: key);

  @override
  State<TestingPage> createState() => _TestingPageState();
}

class _TestingPageState extends State<TestingPage> {
  bool check = false;

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: MediaQuery
            .of(context)
            .size * 0.05,
        child:
        AppBar(
          title: const Text("Home Page"),
          actions: [
            Checkbox(
                value: false,
                onChanged: (value) {

                }),
          ],


        ),
      ),
      body:BlocBuilder<SolvingTestCubit, bool>(
        builder: (context, isSolving) {
          return SingleChildScrollView(
        child: Container(
          color: Colors.black38,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
             if(!isSolving)  SingleChildScrollView(
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {

                              context.read<SolvingTestCubit>().changeValue(
                                  true);
                            },
                            child: customCard(context, "Amaliy Ekonometrika"),
                          ), // Card
                          InkWell(
                            onTap: () {
                              context.read<SolvingTestCubit>().changeValue(
                                  true);
                            },
                            child: customCard(context, "Amaliy Ekonometrika"),
                          ),
                          InkWell(
                            onTap: () {
                              context.read<SolvingTestCubit>().changeValue(
                                  true);
                            },
                            child: customCard(context, "Makroiqtisodiyot"),
                          ), //
                          InkWell(
                            onTap: () {
                              context.read<SolvingTestCubit>().changeValue(
                                  true);
                            },

                            child: customCard(context, "Infokommunikatsiya"),
                          ), // // / Card
                        ],


                      ),
                    ),
                  ),

              if(isSolving) Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Center(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Card(
                        color: Colors.white70,
                        child: QuestionWidget(),

                      ),

                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      );
        },
      ),
    );
  }

  Widget customCard(BuildContext context, String subject) {
    return Center(
      child: Card(
        elevation: 50,
        shadowColor: Colors.black,
        color: Colors.greenAccent[100],
        child: SizedBox(
          width: MediaQuery
              .of(context)
              .size
              .width * 0.8,
          height: 220,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [

                const SizedBox(
                  height: 10,
                ), //SizedBox
                Center(
                  child: Text(
                    '$subject',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.green[900],
                      fontWeight: FontWeight.w500,
                    ), //Textstyle
                  ),
                ), //Text
                const SizedBox(
                  height: 10,
                ), //SizedBox

                const SizedBox(
                  height: 10,
                ), //SizedBox
                const Text(
                  'Testni boshlash',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                  ), //Textstyle
                ), //Text
              ],
            ), //Column
          ), //Padding
        ), //SizedBox
      ),
    ); //
  }

}

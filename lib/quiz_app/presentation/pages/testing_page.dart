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
  String subject = "";

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()=>Future.value(false),
      child: Scaffold(
     backgroundColor: Colors.white,
        appBar:AppBar(
          title: const Text("TestParser"),

          backgroundColor: Colors.blue,
        ),
        body:BlocBuilder<SolvingTestCubit, bool>(
          builder: (context, isSolving) {
            return SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
             if(!isSolving)  Center(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   const SizedBox(height: 10,),

                   InkWell(
                     onTap: () {

                       context.read<SolvingTestCubit>().changeValue(
                           true);
                       subject="operatsion";
                     },
                     child: customCard(context, "Operatsion Tizimlar"),
                   ), // Card
            InkWell(
            onTap: () {
            context.read<SolvingTestCubit>().changeValue(
            true);
            subject="operatsion2";
            },

            child: customCard(context, "Operatsion 2"),
            ),
                   InkWell(
                     onTap: () {
                       context.read<SolvingTestCubit>().changeValue(
                           true);
                       subject="econometrics";
                     },
                     child: customCard(context, " Ekonometrika"),
                   ),
                   InkWell(
                     onTap: () {
                       context.read<SolvingTestCubit>().changeValue(
                           true);
                       subject="makro";
                     },
                     child: customCard(context, "Makroiqtisodiyot"),
                   ), //
                   InkWell(
                     onTap: () {
                       context.read<SolvingTestCubit>().changeValue(
                           true);
                       subject="infocom";
                     },

                     child: customCard(context, "Infokom"),
                   ),
                 const SizedBox(height: 20,) // / Card
                 ],


               ),
             ),

              if(isSolving) SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children:  [
                    Center(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: SingleChildScrollView(
                          child: Container(
color: Colors.white,


                              height: MediaQuery.of(context).size.height*0.89,
                              width: MediaQuery.of(context).size.width,
                              child: QuestionWidget( subject: subject,)),
                        ),

                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        );
          },
        ),
      ),
    );
  }

  Widget customCard(BuildContext context, String subject) {
    return Center(
      child: Card(
        elevation: 50,

        color: Colors.white,
        child: SizedBox(
          width: MediaQuery
              .of(context)
              .size
              .width * 0.85,
          height: 180,
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
                    subject,
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

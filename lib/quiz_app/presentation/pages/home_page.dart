import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_tuit/quiz_app/presentation/manager/main_view_model.dart';
import 'package:quiz_tuit/quiz_app/presentation/widgets/question_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool check = false;

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: MediaQuery.of(context).size * 0.05,
        child: BlocBuilder<AutoNextCubit, bool>(
          builder: (context, state) {
            return AppBar(
              title: const Text("Home Page"),
              actions: [
                Checkbox(
                    value: state,
                    onChanged: (value) {
                      context.read<AutoNextCubit>().changeValueto(value!);
                    }),
              ],
            );
          },
        ),
      ),
      body: Container(
        color: Colors.black38,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
             const Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Card(
                  color: Colors.white70,
                  child: QuestionWidget( ),

),

              ),
            ),
           Row(
             mainAxisSize: MainAxisSize.max,
             mainAxisAlignment: MainAxisAlignment.end,
             crossAxisAlignment: CrossAxisAlignment.end,
             children: [

                const SizedBox(
                  width: 10,
                ),

             ],
           )
          ],
        ),
      ),
    );
  }
}

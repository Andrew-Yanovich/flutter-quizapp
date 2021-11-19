import 'package:flutter/material.dart';
import 'package:flutter_quizapp/quiz/quiz_state.dart';
import 'package:flutter_quizapp/services/firestore.dart';
import 'package:flutter_quizapp/services/models.dart';
import 'package:flutter_quizapp/shared/loading.dart';
import 'package:flutter_quizapp/shared/progress_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class QuizScreen extends StatelessWidget {
  final String quizId;
  const QuizScreen({Key? key, required this.quizId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => QuizState(),
      child: FutureBuilder<Quiz>(
       future: FirestoreService().getQuiz(quizId),
       builder: (context, snapshot){
         var state = Provider.of<QuizState>(context);
         if(!snapshot.hasData || snapshot.hasError){
           return const Loader();
         } else {
           return Scaffold(
             appBar: AppBar(
               title: AnimatedProgressbar(value: state.progress),
               leading: IconButton(
                 icon: const Icon(FontAwesomeIcons.times),
                 onPressed: () => Navigator.pop(context),
               ),
             ),
           );
         }
       },
      ),
    );
  }
}
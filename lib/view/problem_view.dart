import 'package:flutter/material.dart';
import '../providers.dart';
import '/viewmodels/problem_view_model.dart';
import 'package:provider/provider.dart';


class ProblemView extends StatefulWidget {
  const ProblemView({Key? key}) : super(key: key);

  @override
  ProblemViewState createState() => ProblemViewState();
}

class ProblemViewState extends State<ProblemView> {
  @override
  void initState() {
    super.initState();
    // Future.microtask(() {
    //   Provider.of<ProblemViewModel>(context, listen: false).fetchProblem(
    //     uri: 'https://rm-series3.onrender.com/problem',
    //     apiKey: '',
    //     difficulty: 'facil',
    //     language: 'es',
    //   );
    // });
  }

  @override
  Widget build(BuildContext context) {
    ProblemViewModel problemViewModel = Provider.of<ProblemViewModel>(context,listen: false);
    return ChangeNotifierProvider(
      create: (context) => problemViewModel, 
    child:
    MaterialApp(
      home:Scaffold(
      appBar: AppBar(
        title: const Text('Problem'),
      ),
      body: Center(
        child: Consumer<ProblemViewModel>(
          builder: (context, problemViewModel, child) {
            if (problemViewModel.isLoading) {
              return const CircularProgressIndicator();
            } else {
              final problem = problemViewModel.problem;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                 Text('Difficulty: ${problem?.difficulty ?? ''}'),
                  Text('Language: ${problem?.language ?? ''}'),
                  Text('Sequence: ${problem?.sequence ?? ''}'),
                  Text('Answer: ${problem?.answer ?? ''}'),
                  Text('Options: ${problem?.options ?? ''}'),
                ],
              );
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          problemViewModel.fetchProblem(
            uri: 'https://rm-series3.onrender.com/problem',
            apiKey: '',
            difficulty: 'facil',
            language: 'es',
          );
        },
        tooltip: 'Get Problem',
        child: const Icon(Icons.refresh),
      ),
      ),
      ),
    );
  }
}

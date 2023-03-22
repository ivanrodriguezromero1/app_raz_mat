
import 'package:flutter/material.dart';
import 'package:raz_mat/viewmodels/providers.dart';
import '../main.dart';
import '../view/problems_screen.dart';
import '../view/settings_screen.dart';
import '../view/solutions_screen.dart';
import '../view/theory_screen.dart';
import '../view/widgets.dart';
import 'my_app_localizations.dart';

void goToProblems(BuildContext context, DataModel dataModel, MyAppLocalizations localizations) {
  checkInternetConnectivity(dataModel);
  createProblem(dataModel, localizations);
  dataModel.connected 
    ? changePageScale(context, const ProblemsScreen())
    : disconnected(context, localizations);
}
void goToTheory(BuildContext context, DataModel dataModel, MyAppLocalizations localizations) {
  checkInternetConnectivity(dataModel);
  dataModel.teoria = getTheoryByOption(dataModel, localizations);
  dataModel.connected 
    ? changePageScale(context, const TheoryScreen())
    : disconnected(context, localizations);
}
void changePageSlide(BuildContext context, StatefulWidget page, double x, double y){
  Navigator.of(context).push(
    PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 400),
      pageBuilder: (_, __, ___) => page,
      transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: Offset(x, y),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
    ),
  );
}
void changePageScale(BuildContext context, StatefulWidget page){
  Navigator.of(context).push(
    PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 500),
      pageBuilder: (_, __, ___) => page,
      transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
        return ScaleTransition(
          scale: Tween<double>(
            begin: 0.5,
            end: 1.0,
          ).animate(animation),
          child: child,
      );
      },
    ),
  );
}
void goToSettings(BuildContext context) {
    changePageSlide(context, const SettingsScreen(),1.0,0);
}
void goToHome(BuildContext context) {
  changePageSlide(context,const MyHomePage(),-1.0,0);
}
void goToSolution(BuildContext context) {
  changePageSlide(context, const SolutionsScreen(),0,-1.0);
}
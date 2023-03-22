import 'package:flutter/material.dart';
import 'package:raz_mat/viewmodels/change_page.dart';
import 'package:raz_mat/viewmodels/providers.dart';
import '../viewmodels/my_app_localizations.dart';

Container getItem(BuildContext context,
                  DataModel dataModel,
                  MyAppLocalizations localizations,
                  IconData iconData,
                  String topic,
                  {int opcion = 1}){
  return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.yellow.shade700,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                    leading: Icon(iconData, color: Colors.yellow.shade800,),
                    title: Text(topic,
                      style: TextStyle(fontSize: 20, color: Colors.grey.shade700),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.orange.shade300,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.menu_book, color: Colors.orange.shade600),
                            onPressed: () {
                              dataModel.option = opcion;
                              goToTheory(context, dataModel, localizations);
                            },
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.orange.shade300,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.edit, color: Colors.orange.shade600),
                            onPressed: () {
                              dataModel.option = opcion;
                              goToProblems(context, dataModel, localizations);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                );
}

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> disconnected(BuildContext context, 
                                                                       MyAppLocalizations localizations){
  return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(localizations.disconnected),
          action: SnackBarAction(
            label: localizations.close,
            textColor: Colors.white,
            onPressed: () {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
            },
          ),
        ),
      );
}
